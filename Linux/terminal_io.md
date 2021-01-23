# terminal_io 
================================�ı�����===================================

## ����  
�򴮿ڷ���ָ��**0x02(STX)**����read()ȥ���յ������ݵ�ʱ����ʾ**Resource temporarily**  
**unavailable**

## ����  
������Ϊ�ڴ��ڴ򿪵�ʱ�����ó���**canonical**ģʽ����ģʽ��Ϊ**non-canonical**���ɡ�

## ����  
POSIX system support two basic modes of input: canonical and noncanonical.

### Canonical input style
#### Every input is Terminated by a newline, EOF, or EOL
In *canonical input processing mode*, terminal input is processed in lines terminated   
by **newline ('\n'), EOF, or EOL characters**. No input can be read until an **entire line**    
has been typed by the user, and the *read* function returns at **most a single line** of     
input, no matter how many bytes are requested.

#### Could edit current line of text
In canonical input mode, the operation system provides input editing facilities: some characters   
are interpreted to perform editing operations within the current line of text, such as *ERASE* and  
*KILL*.


### Noncanonical input style
#### Raw input
In *noncanonical input processing* mode, characters are not grouped into lines, like *ERASE* and *KILL*  
processing is not performed. The granularity with which bytes read in noncanonical input mode is controled  
by *MIN* and *TIME* settings.

### CONVENTIONS  
Most programs use canonical input mode, because this gives users a way to edit the input line by line;  
The usual reason to use noncanonical mode is when the program accepts **single-character** commands   
or provides its own **editing facilities**.

