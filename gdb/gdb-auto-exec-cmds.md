# GDB Automatic Execution of Commands

GDB lets you attach command list to breakpoints and watchpoints, the syntax of a command list:
```
    (gdb) commands breakpoints-number
    ...list-of-commands
    ...list-of-commands
    end
```

For example, consider the following code:
```c
    1 int main(void)
    2 {
    3     int i;
    4 
    5     for (i = 1; i < 100; )
    6         i += i;
    7     printf("i: %d\n", i);
    8     return 0;
    9 }
```

we'd like to check the values *i* whenever we hit the breakpoint, so we add the following patch:
```
    (gdb) break 6
    Breakpoint 1 at 0x55555555465b: file main.c, line 6.

    (gdb) commands 1
    Type commands for breakpoint(s) 1, one per line.
    End with a line saying just "end".
    >echo value of i: \n
    >print i
    >continue
    >end

    (gdb) 
```

We use the **echo** command to print some message, use **print** command to print value of *i*, and 
use **continue** command to let gdb continue executing when hits the breakpoint.

When we run the program, the output is equal to add the debug statement `printf("value of i:\n %d\n", i);` 
after line 6, but even better because you needn't to delete it or comment it after debuging, you just do 
things in GDB!

