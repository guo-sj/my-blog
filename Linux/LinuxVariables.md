# Linux variable 

## 前言
`Linux variable` 分为`shell variable`和`environment variable`，下面就来
分别介绍它们的含义和用法。


## shell variable 
### 定义
`shell variable` 指的是针对某一个shell实体的变量。每个shell，如 *bash* 和 *zsh* 
都有它们自己的变量集合。

### 用法
定义`shell variable`有两种方式：
1. 直接在命令行中定义
2. 写在当前shell的配置文件里

#### 直接在命令行中定义
这种方式定义的变量只在当前的*session*中有效，即当你另外打开一个终端后，
定义的变量就无效了。

定义方法为：
```sh
$ KEY=value
```
根据使用惯例，`shell variable`一般都是**大写字母**，而且在`=`周围**没有空格**。

例如：
```sh
$ JC=guosj

$ set | grep JC
JC=guosj

```
这里，`set`命令在不跟任何参数时，会打印出所有的`shell variable`和`environment variable`。

#### 写在当前shell的配置文件里
这种方式定义的变量对于这个shell的所有*session*都有效，它的定义方法和第一种方法一样，
不同的地方在于：第一种方法是在命令行中定义，第二种方法则是写在shell的配置文件里。

假设你经常访问一个目录，如`/home/gsj/Documents/jackie-mantou/github`，除了每次不断地敲击
键盘外，你还可以这样做：

打开当前shell的配置文件，显然，这里的shell为`zsh`：
```sh
$ vim ~/.zshrc
```

在文件的最后加上如下内容：
```
# my github directory
JC=/home/gsj/Documents/jackie-mantou/github
```

再使用`source`命令重载当前shell的配置文件：
```sh
$ source ~/.zshrc
```

测试：
```sh
$ cd $JC

$ pwd
/home/guosj/Documents/jackie-mantou/github
```
这样一来，所有的事情都变得简单多了！

## environment variable
### 定义
`environment variable`指的是可以被用系统所用的变量，可以被所有的子进程和shell继承使用。


### 用法
命令`printenv`可以用来打印某个特定的`environment variable`，如：
```sh
$ printenv PATH
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
```

当`printenv`后面不跟其他参数的时候，它会打印出所有的`environment variable`，所以，在单独的`printenv`
输出中搜索`PATH`，可以得到和上面一样的结果：
```sh
$ printenv | grep PATH
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
```

同时，因为`printenv`只是打印`environment variable`，所以它还可以用来甄别一个变量是否是`environment variable`：
```sh
$ JC=guosj

$ printenv JC    # got nothing

$ set | grep JC
JC=guosj
```
这里，因为`JC`只是一个临时定义的`shell variable`，所以`printenv JC`什么都不会输出。而因为
`set`命令在不跟任何参数时可以打印所有的`shell variable`和`environment variable`，所以
`set | grep JC`会输出刚才定义的`JC`的值。

命令`export`可以定义一个`environment variable`，如：
```sh
$ export KV=keyValue

$ printenv KV
keyValue
```

此外，`export`还可以使一个`shell variable`转变为`environment variable`：
```sh
$ KV=keyValue

$ printenv KV    # got nothing

$ /bin/bash -c 'echo $KV'    # got nothing

$ export KV

$ printenv KV
keyValue

$ /bin/bash -c 'echo $KV'
keyValue
```
这里，我们先定义了一个临时`shell variable`，再用`export`使它转变为`environment variable`。

值得注意的是，`echo` 命令也可以用来查看变量的值，而`/bin/bash -c 'echo $KV'`则是利用`bash`去
执行命令`echo $KV`。当`KV`是`environment variable`时，当前系统的所有shell都会继承`KV`的值。

同样的，这种方法也可以用来检测一个变量是否是`environment variable`。

