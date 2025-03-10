# Big endians && Little endians

## 问题  
- 给定一个字节排列，快速判断其排列方式是大端还是小端  
- 提到大端或小端，快速反应排列方式

## 分析  
### 概念  
这两个问题其实是一个问题，只要理解大端和小端的概念，就可以快速解决。按照以下
的步骤分析即可:   
- 找到"Most Significant Byte" 和 "Least Significant Byte";
- 大端: MSB first
- 小端: LSB first

### 举例  
对于int型数据 **0x12345678** :  
- MSB : 0x12  LSB : 0x78  
- Big endians:      ... | 0x12 | 0x34 | 0x56 | 0x78 | ...
- Little endians:   ... | 0x78 | 0x56 | 0x34 | 0x12 | ...

### CONVENTIONS  
	In virtually all machines, a multi-byte object is stored as a contiguous
	sequences of bytes, with the address of the object given by the smallest
	address of the bytes used. For example, suppose a variable x of type int
	has address 0x100; that is, the value of the address expression &x is
	0x100. Then (assuming data type int has 32-bit representation) the four 
	bytes of x would be stored in memory locations 0x100, 0x101, 0x102, 0x103.

