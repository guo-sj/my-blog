# Share Library 

## 问题描述
运行代码的时候，经常遇到类似下面的错误：
```
./executable_file: error while loading shared libraries: libmissing.so: cannot open shared object file: No such file or directory
```

## 原因
在动态链接时，shell无法找到相关的`*.so`文件

`ldd`命令可以用来来查看当前程序的 library(shared object) 依赖情况，用法为：
```sh
$ ldd executable_file
```

如：
```sh
$ ldd /usr/bin/zip

[No write since last change]
	linux-vdso.so.1 (0x00007ffdbc5bc000)
	libbz2.so.1.0 => /lib/x86_64-linux-gnu/libbz2.so.1.0 (0x00007f914755d000)
	libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007f914736b000)
	/lib64/ld-linux-x86-64.so.2 (0x00007f9147808000)

```

PS: `so` 是`Shared Object` 的缩写

## 解决办法
当我们知道问题的原因后，就可以很直接地得到解决办法。

解决办法根据不同情况而分成如下几种：

### 相关目录 中有相关的 libmissing.so 文件
这种情况，我们只需要更新相关 libmissing.so 文件的链接，命令`ldconfig`可以很好的帮助我们，运行：
```sh
$ sudo ldconfig
```
即可。

### 相关目录 中没有相关的 libmissing.so 文件

#### 缺少的 libmissing.so 文件不是当前程序编译生成的文件
运行如下命令在仓库中寻找缺少的`libmissing.so`文件：
```sh
$ sudo apt search libmissing

```
或者把前缀`lib`去掉，再加上`--names-only`得到更准确的结果：
```sh
$ sudo apt search --names-only missing
```

找到之后，运行命令安装：
```sh
$ sudo apt install result_package
```

#### 缺少的 libmissing.so 文件为当前程序编译生成的文件
以上面的错误信息为例，在程序的根目录运行：
```sh
$ find . -name "libmissing.so"
```

来找到这个文件。然后运行：
```sh
$ sudo cp ./path/libmissing.so 相关目录
```

最后运行如下命令更新链接：
```sh
$ sudo ldconfig
```
