/* 
 * gfxasm 0.01 <z64.me>
 *
 */

/* TODO use strtok_r instead of strtok */

#include <stdio.h>
#include <stdarg.h>
#include <stdint.h>
#include <string.h>
#include <assert.h>
#include <stdlib.h>

#ifndef GBI_PREFIX
#	error "GBI_PREFIX not defined; please compile with -DGBI_PREFIX=F3D, F3DEX, or F3DEX2"
#endif

#define F3D     1
#define F3DEX   2
#define F3DEX2  3

#if (GBI_PREFIX == F3D)
#	define F3D_GBI 1
#	undef GBI_PREFIX
#	define GBI_PREFIX f3d

#elif (GBI_PREFIX == F3DEX)
#	define F3DEX_GBI 1
#	undef GBI_PREFIX
#	define GBI_PREFIX f3dex

#elif (GBI_PREFIX == F3DEX2)
#	define F3DEX_GBI_2 1
#	undef GBI_PREFIX
#	define GBI_PREFIX f3dex2

#else
#	error "invalid or no GBI prefix"
#endif

#include "gbi.h"

struct gfxasm_result
{
	Gfx   buf[16];  /* buffer where results are stored      */
	Gfx  *p;        /* where to write next result in buffer */
	int   num;      /* number of results retrieved          */
};

static char *error_reason = 0;
static int fatal = 0;
static void *mkerr(const char *fmt, ...)
{
	static char buf[1024];// = 0;
	va_list args;
	
	/*if (!buf && !(buf = malloc(1024)))
	{
		error_reason = "ran out of memory";
		return 0;
	}*/
	
	va_start(args, fmt);
	vsprintf(buf, fmt, args);
	va_end(args);
	
	error_reason = buf;
	fatal = 1;
	return 0;
}

const char *gfxasm_error(void)
{
	return error_reason;
}

const int gfxasm_fatal(void)
{
	return fatal;
}

/* override with version that don't use concatenation */
#undef gsDPSetCombineLERP
#define                             \
gsDPSetCombineLERP(a0,b0,c0,d0,Aa0, \
                   Ab0,Ac0,Ad0,a1,  \
                   b1,c1,d1,Aa1,    \
                   Ab1,Ac1,Ad1)       gO_(G_SETCOMBINE,             \
                                          gF_(a0,4,20)|             \
                                          gF_(c0,5,15)|             \
                                          gF_(Aa0,3,12)|            \
                                          gF_(Ac0,3,9)|             \
                                          gF_(a1,4,5)|              \
                                          gF_(c1,5,0),              \
                                          gF_(b0,4,28)|             \
                                          gF_(b1,4,24)|             \
                                          gF_(Aa1,3,21)|            \
                                          gF_(Ac1,3,18)|            \
                                          gF_(d0,3,15)|             \
                                          gF_(Ab0,3,12)|            \
                                          gF_(Ad0,3,9)|             \
                                          gF_(d1,3,6)|              \
                                          gF_(Ab1,3,3)|             \
                                          gF_(Ad1,3,0))

#undef G_CC_LERP
#define G_CC_LERP(a0,b0,c0,d0,Aa0,  \
                  Ab0,Ac0,Ad0,a1,   \
                  b1,c1,d1,Aa1,     \
                  Ab1,Ac1,Ad1)        (gFL_(a0,4,52)|               \
                                       gFL_(c0,5,47)|               \
                                       gFL_(Aa0,3,44)|              \
                                       gFL_(Ac0,3,41)|              \
                                       gFL_(a1,4,37)|               \
                                       gFL_(c1,5,32)|               \
                                       gFL_(b0,4,28)|               \
                                       gFL_(b1,4,24)|               \
                                       gFL_(Aa1,3,21)|              \
                                       gFL_(Ac1,3,18)|              \
                                       gFL_(d0,3,15)|               \
                                       gFL_(Ab0,3,12)|              \
                                       gFL_(Ad0,3,9)|               \
                                       gFL_(d1,3,6)|                \
                                       gFL_(Ab1,3,3)|               \
                                       gFL_(Ad1,3,0))

#define DELIM "() \"'\r\n\t"
#define CONCAT_USCORE_(A,B) A ## _ ## B
#define CONCAT_USCORE(A,B) CONCAT_USCORE_(A, B)

#define REGVAL(X) { .name = #X, .udata.value = X, .argc = -1 }
#define REGFUNC(X, ARGC, FP) {                  \
   .name = #X                                   \
   , .argc = ARGC                               \
   , .isfp = FP                                 \
   , .udata.exec = CONCAT_USCORE(GBI_PREFIX, X) \
}
#define REGEXPANSION(NAME, EXP) { .name = NAME, .udata.exp = EXP, .argc = -2 }

struct pool
{
	char            *name;
   int              argc;
   int              isfp;  /* is floating point */
   union
   {
      void         (*exec)(void *dest, uint32_t *argv);
      char         *exp;
      uint32_t      value;
   } udata;
};

#define make_func(func)                   \
uint32_t *func##_exec(char *str)          \
{                                         \
   return pool_exec(str, func##_pool);    \
}

#define make_func_r(func)                 \
uint32_t *func##_exec_r(const char *str)  \
{                                         \
   char *s;                               \
   void *rv;                              \
                                          \
   if (!str || !(s = strdup(str)))        \
      return 0;                           \
                                          \
   rv = func##_exec(s);                   \
                                          \
   free(s);                               \
   return rv;                             \
}

static const struct pool *
pool_search(const struct pool *hay, const char *ndl)
{
	assert(ndl);
	assert(hay);
	
	while (hay->name)
	{
		if (!strcasecmp(hay->name, ndl))
			return hay;
		
		++hay;
	}
	
	return 0;
}

static char *expand(char *str, const struct pool *pool)
{
	if (!str)
		return 0;
	
	static char buf[2048];// = 0;
	char str1[2048];
	const int bufsz = 2048;
	int i;
//	if (!buf && !(buf = malloc(bufsz)))
//		return mkerr("ran out of memory");
	
	/* nesting break sequence ")`" overwrites every ')'
	 * (fixes gSPSetOtherModeLo and likely more issues)
	 * see, the issue was in cases like this:
		GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)
		| 0
		| GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)
		the | 0 and the | GBL_c2(...) was all being |'d onto the
		last argument inside the GBL_c1, since it goes by arg
		count instead of ')'; b/c the token after G_BL_1MA was '|',
		it kept adding it to the last argument; this fix uses '`'
		to break such sequences
	 */
	for (i = 0; i < 2048 && *str; ++i, ++str)
	{
		str1[i] = *str;
		if (*str == ')')
			str1[++i] = '`';
	}
	str1[i] = '\0';
	str = str1;
	
	memset(buf, 0, bufsz);
	str = strtok(str, DELIM);
	for (; str; str = strtok(0, DELIM))
	{
//		fprintf(stderr, "token '%s'\n", str);
		strcat(buf, " ");
		const struct pool *p;
		if ((p = pool_search(pool, str)) && p->argc == -2)
			strcat(buf, p->udata.exp);
		else if (strchr(str, ','))
		{
			strncat(buf, str, strcspn(str, ","));
			strcat(buf, " , ");
		}
		else
			strcat(buf, str);
		strcat(buf, " ");
	}
//	fprintf(stderr, "expanded to '%s' %p\n", buf, buf);
	
	return buf;
}

/* evaluate a gbi macro (supports nesting) */
static uint32_t *pool_exec(char *str, const struct pool *pool)
{
	assert(pool);
	
	error_reason = "it's not broken";
	
	static uint32_t result[2];
	static int sp = 0;
	static struct gfxasm_result g = {0};
	
	const struct pool *fp = 0;
	uint32_t argv[256];
	int argc = 0;
	int Osp = sp;
	int or = 0;
	const char *setcomb_prefix[] = {
		"G_CCMUX_", "G_CCMUX_", "G_CCMUX_", "G_CCMUX_"
		, "G_ACMUX_", "G_ACMUX_", "G_ACMUX_", "G_ACMUX_"
		, "G_CCMUX_", "G_CCMUX_", "G_CCMUX_", "G_CCMUX_"
		, "G_ACMUX_", "G_ACMUX_", "G_ACMUX_", "G_ACMUX_"
	};
	const char **prefix = 0;
	
	/* result buffer still contains results */
	if (g.num && g.p - g.buf < g.num)
	{
		result[0] = g.p->hi;
		result[1] = g.p->lo;
		g.p++;
		return result;
	}
	/* result buffer empty */
	if (g.num && g.p - g.buf >= g.num)
	{
		g.num = 0;
		return 0;
	}
	
	if (!str || !*str)
	{
		mkerr("empty or 0-length string");
		fatal = 0;
		return 0;
	}
	
	/* root invocation */
	if (!sp)
	{
		/* attempt expansion */
		str = expand(str, pool);
		if (!str)
			return 0;
		/* tokenize expanded string */
		str = strtok(str, DELIM);
		g.p = g.buf;
		g.num = 0;
	}
	
	for (; str; str = strtok(0, DELIM))
	{
		uint32_t v;
		const struct pool *p;
		char *ndl;
		
//		fprintf(stderr, "tok %s\n", str);
		
L_bitwise_or_test:
		/* a lone bitwise or */
		if (str[1] == '\0' && *str == '|')
		{
			or = 1;
			continue;
		}
		
		/* one of these */
		if (*str == '`')
			continue;
		
		/* a lone comma */
		if (*str == ',')
			continue;
		
		/* a bitwise or used without spaces is unsupported */
		if (strchr(str, '|'))
			return mkerr("'|' character used without spaces");
		
		if (prefix)
		{
			static char x[1024];// = 0;
			//if (!x && !(x = malloc(1024)))
			//	return mkerr("ran out of memory");
			sprintf(x, "%s%s", *prefix, str);
			ndl = x;
			++prefix;
		}
		else
			ndl = str;
		
		p = pool_search(pool, ndl);
		if (p)
		{
			/* first match refs function */
			if (!fp)
			{
				fp = p;
//				fprintf(stderr, "match '%s'\n", fp->name);
				
				/* hacky fix for gsDPSetCombineLERP so that all its
				 * arguments get a prefix pulled from a list which
				 * assumes a certain order
				 */
				if (!strcasecmp(fp->name, "gsDPSetCombineLERP"))
					prefix = setcomb_prefix;
				
				continue;
			}
			/* subsequent matches indicate defs and macros */
			else
			{
				/* no args, so it's a value, not a function */
				if (p->argc < 0)
					v = p->udata.value;
				
				/* it's a submacro */
				else
				{
					Gfx *Op;
					/* advance stack pointers */
					sp += argc + 1;
					Op = g.p;
					
					/* try evaluating it */
					if (!pool_exec(str, pool))
						/* something went wrong */
						return 0;
					
					/* restore stack pointers */
					sp -= argc + 1;
					g.p = Op;
					
					/* taking advantage of the shared result structure */
					v = result[0];
				}
			}
		}
		else
		{
			/* first match failed */
			if (!fp)
				return mkerr("'%s' does not match a function", ndl);
			
			/* numerical data if it got here */
			if (fp->isfp)
			{
				/* it's a float */
				float f;
				if (sscanf(str, "%f", &f) != 1)
					return mkerr("'%s' failed to grab float '%s'", fp->name, str);
//				v = *(uint32_t*)(&f); /* -Wstrict-aliasing */
				/* XXX beware endianness on certain architectures */
				memcpy(&v, &f, sizeof(v));
			}
			else
			{
				/* it's an int */
				if (sscanf(str, "%i", &v) != 1)
					return mkerr("'%s' failed to grab int '%s'", fp->name, str);
			}
		}
		
		/* bitwise or into previous argument */
		if (or)
		{
			argv[sp + (argc - 1)] |= v;
			or = 0;
		}
		/* add new argument */
		else
		{
			argv[sp + argc] = v;
			argc++;
		}
		
		/* we have all the arguments we need to execute this one */
		if (argc == fp->argc)
		{
			/* if the next token is a bitwise-or, go back */
			str = strtok(0, DELIM);
			if (str && strchr(str, '|'))
				goto L_bitwise_or_test;
			/* otherwise, go execuse it */
			break;
		}
	}
	
	/* execute function */
//	fprintf(stderr, "%s->exec(%d args)\n", fp->name, argc);
	if (!fp)
	{
		mkerr("blank string");
		fatal = 0;
		return 0;
	}
	if (argc < fp->argc)
		return mkerr("'%s' not enough arguments", fp->name);
	if (argc > fp->argc)
		return mkerr("'%s' too many arguments", fp->name);
	
	fp->udata.exec(&g, argv + sp);
	
	/* only reset on root invocation */
	if (sp == 0)
	{
		g.num = g.p - g.buf;
		g.p = g.buf;
	}
	result[0] = g.p->hi;
	result[1] = g.p->lo;
	g.p++;
	
	/* restore stack pointer */
	sp = Osp;
	
	return result;
}

#if defined(F3D_GBI)
#	include "impl/f3d.ch"
	make_func(f3d)
	make_func_r(f3d)
#endif
#if defined(F3DEX_GBI)
#	include "impl/f3dex.ch"
	make_func(f3dex)
	make_func_r(f3dex)
#endif
#if defined(F3DEX_GBI_2)
#	include "impl/f3dex2.ch"
	make_func(f3dex2)
	make_func_r(f3dex2)
#endif


#ifdef GFXASM_MAIN
#define STRINGIFY_(X) #X
#define STRINGIFY(X) STRINGIFY_(X)
int main(void)
{
	fprintf(stderr, " gfxasm." STRINGIFY(GBI_PREFIX) " <z64.me>\n");
	fprintf(stderr, " * type a macro to assemble, then press enter\n");
	fprintf(stderr, " * if you press enter without typing anything,\n");
	fprintf(stderr, "   the program will exit\n");
	fprintf(stderr, " * command line users: you can process a whole\n");
	fprintf(stderr, "   file with a different macro on each line\n");
	fprintf(stderr, "   by running this-program.exe < file.txt\n");
	
	while (1)
	{
		static char *n = 0;
		size_t lineSz;
		uint32_t *r;
		
		/* get contents of one line, stripping newline character */
		if (!n)
		{
			lineSz = 1024;
			n = malloc(lineSz);
		}
		if (!fgets(n, lineSz, stdin) || strlen(n) < 2)
			break;
#define exec_cmd CONCAT_USCORE(GBI_PREFIX, exec)
		
		if ((r = exec_cmd(n)))
			do
				fprintf(stderr, "%08X %08X\n", r[0], r[1]);
			while ((r = exec_cmd(n)));
		else
			fprintf(stderr, "error: %s\n", gfxasm_error());
	}
}
#endif /* GFXASM_MAIN */
