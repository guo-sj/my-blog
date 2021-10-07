# Vim Create Dictionary

## Question
How to create a dictionary for completion in typing english words?

## Answer
Dictionary completion is useful when you are typing a *long word* (e.g. "acknowledgeable") and don't want to finish typing or don't remember the spelling.

To start, we must first tell Vim where our dictionary is located. This is done via the **dictionary** option. Using the following command to vary if you already have a dictionary loaded:
```
:set dictionary?
``` 

If not and if you use vim on linux, type this command to set one:
```
:set dictionary+=/usr/share/dict/words
```

To use the list of words in a dictionary we have enter **insert mode completion**. This is done by hitting **Ctrl-X**.  Next, you have to specify what you want to complete. For dictionaries use **Ctrl-K**. Once in this mode the keys **Ctrl-N** and **Ctrl-P** will cycle through the matches. So, to complete the word "acknowledgeable", type the following in insert mode:
```
acknow<Ctrl-X><Ctrl-K><Ctrl-N>
```

For more information see [DictionaryCompletions](https://vim.fandom.com/wiki/Dictionary_completions), or just type:
```
:help 'dictionary'
```
