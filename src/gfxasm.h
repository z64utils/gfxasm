/* 
 * gfxasm 0.01 <z64.me>
 *
 */

#ifndef GFXASM_H_INCLUDED
#define GFXASM_H_INCLUDED
#include <stdint.h>

/* the following functions compile f3d[ex[2]] macros, returning
 * a pointer to the result on success, or 0 on failure
 * [!] the pointer it returns is not to be free()'d
 * [!] these functions modify the string that is passed to them
 *     (use the _r versions for the non-destructive equivalents)
 */
extern uint32_t    *f3d_exec     (char *str);
extern uint32_t    *f3dex_exec   (char *str);
extern uint32_t    *f3dex2_exec  (char *str);

extern uint32_t    *f3d_exec_r   (const char *str);
extern uint32_t    *f3dex_exec_r (const char *str);
extern uint32_t    *f3dex2_exec_r(const char *str);

/* if any of the above functions return 0, use this function
 * to request a cryptic error message about what went wrong
 */
extern const char  *gfxasm_error(void);

/* this one returns non-zero if the error is considered fatal */
extern const int    gfxasm_fatal(void);

#endif /* GFXASM_H_INCLUDED */
