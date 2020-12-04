# gfxasm

`gfxasm` is a hacky F3DZEX2 display list macro assembler I wrote. It assembles output from [@glankk](https://github.com/glankk)'s [`gfxdis`](https://github.com/glankk/n64/tree/master/src/gfxdis) utility.

Windows users who don't feel like compiling it themselves can find binaries in [`bin/win32`](bin/win32).

## Known limitations

It supports only `|`, which must have spaces on either side. Don't use `+`, `-`, `%`, `~`, `!`, `^`, `&`, `&&`, `||`, etc.

Don't expect it to compile a `.c` file containing variables/data/etc. This is only for assembling macros.

## Building

```c
/* 
 * gfxasm 0.01 <z64.me>
 *
 * building is easy
 *
 * gcc -DGFXASM_MAIN -DGBI_PREFIX=F3DEX2 src/gfxasm.c -o gfxasm.f3dex2
 *
 * (you may want to add -mconsole when compiling for win32)
 *
 */
```
