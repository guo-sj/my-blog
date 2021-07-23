# Share Library 

## 问题描述
运行代码的时候，经常遇到类似下面的错误：
```
./Heidenhersh: error while loading shared libraries: libHeidenhersh.so: cannot open shared object file: No such file or directory
```

## 原因
在动态链接时，shell无法找到相关的`*.so`文件

PS: `so` 是`Shared Object` 的缩写

## 解决办法
解决办法根据不同情况而分成如下几种：

### /usr/local/lib 中有相关的 \*.sh 文件
运行如下命令更新即可：
```sh
$ sudo ldconfig
```

### /usr/local/lib中没有相关的 \*.sh 文件

#### 缺少的 \*.so 文件不是当前程序编译生成的文件
运行如下命令在仓库中寻找缺少的`*.so`文件：
```sh
$ sudo apt search libHeidenhersh
```
或者把前缀`lib`去掉，再加上`--names-only`得到更准确的结果：
```sh
$ sudo apt search --names-only Heidenhersh
```

找到之后，运行命令安装：
```sh
$ sudo apt install result_package
```

#### 缺少的 \*.so 文件为当前程序编译生成的文件
以上面的错误信息为例，在程序的根目录运行：
```sh
$ find . -name "libHeidenhersh.so"
```

来找到这个文件。然后运行：
```sh
$ sudo cp ./path/libHeidenhersh.so /usr/local/lib
```

最后运行：
```sh
$ sudo ldconfig
```
