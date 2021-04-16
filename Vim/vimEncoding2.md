
# Vim encoding 2

## 问题  
当从Github上clone一个项目的时候，用Vim打开，修改完保存的时候，Vim经常会提示  
"E513: write error, conversion failed (make 'fenc' empty to override)"。

## 分析
在Vim命令行中输入:
> :help E513  

得到错误解释:

    'charconvert' 'ccv' E202 E214 E513
    ... ...
    An expression that is used for character encoding conversion. It is 
    evaluated when a file that is to be read or has been written has a
    different encoding from what is desired.
    ... ...
    The expression must return zero or an empty string for success,
    non-zero for failure.

可以看到:  
- **charconvert** 变量是在一个文件写入的**字符格式**和文件期待的字符格式
**不一样**的时候就会被计算。
- **charconvert** == 0 || **charconvert** == "" => success;
- **charconvert** != 0 => failure;

### 解决方法
在确保**.vimrc**文件中**fencs**中包含**utf-8**的情况下，重新clone一下，对于  
每一个出现E513的文件，用
> :set fenc=utf-8  
> :wq  

即可。

Aside：在编译项目之前，务必确保项目所有文件的**fenc**都是一致的，否则可能会导致输  
出中文乱码。
