# Vim 编码问题解决

## 问题描述  
Vim 编辑中文文档，上传Git后出现乱码

## 解决方案  
### 操作  
在"_vimrc"中添加**set fileencodings=utf-8**即可。

### 分析  
Git上有可以显示的中文文档，pull下来也可以正常显示，但是本地用Vim编辑的中文  
文档上传后就不能正常显示，所以问题在于本地文件的编码。将文件的编码存储成  
"utf-8"即可。在Vim中输入"help fileencodings"得到如下文字：

	This is a list of character encodings considered when starting to edit
	an existing file.  When a file is read, Vim tries to use the first
	mentioned character encoding.  If an error is detected, the next one
	in the list is tried.  When an encoding is found that works, 
	'fileencoding' is set to it.  If all fail, 'fileencoding' is set to
	an empty string, which means the value of 'encoding' is used.

根据上文，我们可以知道，Vim是根据"fileencodings(fencs)"这个list来对当前文件  
进行显示的，因此我们只需**set fileencodings=utf-8**即可。
