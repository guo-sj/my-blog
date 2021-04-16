# Vim Usr Manual Note

This is about some learning notes in reading vim usr series manual.

## usr_2.txt
- Press **"J"** to break a line break
- Press **"U"** to undo all changes in a line
- add three '!' to end of a line, use **A!!!<Esc>** or **3A!<Esc>**, this a amazing thing!

### Discarding changes and re-edite file
Sometimes when you make sequences of changes and suddenly realize you were better off before
you started, use the following command:
```
:q!
```

But if you want to discard these changes and re-edit this file, type the following:
```
:e!
```

### The help commmand

When you type *:help {subject}* in vim command-line mode, you are actually searching a tag named *subject*.
That means if you remember something is a tag, you can just use the *:help {subject}* syntax to search it in vim help system.

For example, using the following command to jump to help description in *usr_02.txt*:
```
:help 02.8
```

