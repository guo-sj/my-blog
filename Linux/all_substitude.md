# Linux 全局替换

## 问题描述  
Linux环境下，在一个项目中，需要在多个文件中替换字符串。

## 解决方案  
### 操作  
使用命令 **sed -i 's/old_str/new_str/g'**  
如果需要多次替换，还可以将其写成shell脚本：  
	cat test_sed.sh  
		sed -i 's/A/a/g'  
		sed -i 's/B/b/g'  
			...  

### 分析  
之前在学习Linuxtutorial的时候，用过sed这个命令，但是并不知晓它还可以完成这样  
的替换任务。  
在sed的man手册中，对option "-i"的描述如下：  

> -i[SUFFIX], --in-place[=SUFFIX]  
>	edit files in place (makes backup if SUFFIX supplied)  

很简短，并不是完全明白。但是这个的确管用。  
