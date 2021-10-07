# terminal_io 

## 问题  
向串口发送指令**0x02(STX)**，用read()去读收到的数据的时候，显示**Resource temporarily unavailable**

## 分析  
这是因为在串口打开的时候，设置成了**canonical**模式。将模式改为**non-canonical**即可。因为canonical模式下  
是输入以**newline, EOF, EOL**结尾的一行数据，如果没有收到这些结尾符号，就会认为还在输入状态。在输入状态时进  
行*read*操作，就会导致*Resource temporarily unavailable*。因为我们现在发送的指令是*0x02*，一个单字符，并没有  
结尾符号，所以会出现*Resource temporarily unavailable*这样的错误。

## 概念  
POSIX system support two basic modes of input: canonical and noncanonical.

### Canonical input style
#### Every input is Terminated by a newline, EOF, or EOL
In *canonical input processing mode*, terminal input is processed in lines terminated by **newline** ('\n'),  
**EOF, or EOL characters**. No input can be read until an **entire line** has been typed by the user, and the  
*read* function returns at **most a single line** of input, no matter how many bytes are requested.

#### Could edit current line of text
In canonical input mode, the operation system provides input editing facilities: some characters are  
interpreted to perform editing operations within the current line of text, such as *ERASE* and *KILL*.


### Noncanonical input style
#### Raw input
In *noncanonical input processing* mode, characters are not grouped into lines, like *ERASE* and *KILL*  
processing is not performed. The granularity with which bytes read in noncanonical input mode is controled  
by *MIN* and *TIME* settings.

### CONVENTIONS  
Most programs use canonical input mode, because this gives users a way to edit the input line by line;  
The usual reason to use noncanonical mode is when the program accepts **single-character** commands   
or provides its own **editing facilities**.

