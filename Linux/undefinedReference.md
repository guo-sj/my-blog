# undefined reference

## problem
Why C program throws undefined reference error?

```c
#include
#include

void main()
{
    float sqrtval, val;
    val =25.0;
    sqrtval = sqrt(val);
    printf("sqrt of 25 is %f", sqrtval);
}
```

```sh
$ cc sqrt-val.c
/tmp/cciHGLUh.o: In function `main':
sqrt-val.c:(.text+0x1b): undefined reference to `sqrt'
collect2: error: ld returned 1 exit status
```

## answer
To resolve this issue, we need to use `-lm` when compiling the code 
using either cc or gcc compiler. Like this:
```sh
$ cc sqrt-val.c -lm

$ ./a.out 
sqrt of 25 is 5.000000
```

## referrence
You could find the following content from the manual of `gcc`:

```sh
$ man gcc

...

       -l library
           Search the library named library when linking.  (The second alternative with the library
           as a separate argument is only for POSIX compliance and is not recommended.)

           The -l option is passed directly to the linker by GCC.  Refer to your linker
           documentation for exact details.  The general description below applies to the GNU
           linker.

           The linker searches a standard list of directories for the library.  The directories
           searched include several standard system directories plus any that you specify with -L.

           Static libraries are archives of object files, and have file names like liblibrary.a.
           Some targets also support shared libraries, which typically have names like
           liblibrary.so.  If both static and shared libraries are found, the linker gives
           preference to linking with the shared library unless the -static option is used.

           It makes a difference where in the command you write this option; the linker searches and
           processes libraries and object files in the order they are specified.  Thus, foo.o -lz
           bar.o searches library z after file foo.o but before bar.o.  If bar.o refers to functions
           in z, those functions may not be loaded.
           
...

```
