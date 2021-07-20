# Time Complexity 1  时间复杂度 (1)

## 前言
记录一下最近学习的关于`时间复杂度`的相关概念。

## 三个符号 O(n), Ω(n), Θ(n)
- n: 输入数据的数量
- O(n): 表达一个算法运行时间的上限，即算法运行的最坏情况（如，将一个顺序排列的数组进行逆序排序）。
- Ω(n): 表达一个算法运行时间的下限，即算法运行的最好情况（如，将一个顺序排列的数组进行顺序排序）
- Θ(n): 表达一个算法的上下限相等，即**O(n) = Ω(n) = Θ(n)**

## 各种情况的时间复杂度
- T: 一段程序总的运行时间， 
- t: 单个语句的运行时间

### Sequential Statement
这种情况下，程序执行语句的数量与输入数据的数量无关。例如：

```c
int add(int a, int b)
{
    return a+b;
}
```

此时，程序总的运行时间为：

```
T(n) = t(statement1) + t(statement2) + ... + t(statementN)
```
上述可知，程序总的运行时间与`n`无关，所以时间复杂度为O(1)。

### Conditional Statement
一般程序中都会含有**if-else**语句，例如：

```c
if (isValid) {
   statement1;
   statement2;
} 
else 
   statement3;
```

此时，程序总的运行时间为：

```
T(n) = max {[t(statement1)+t(statement2)], t(statement3)}
```
注意，因为`O(n)`是指程序运行时间的最坏情况，所以要选择分支中运行时间较大的一方。
这种情况下，时间复杂度取决于分支中**运行时间较大**的一方的时间复杂度。

### Loop Statement
和*Conditional Statement*一样，多数程序中也都会有循环，如`for`和`while`。
循环有以下三种类型：

#### Linear Times Loop
```c
for (i = 0; i < n; ++i)
    statement1;
```

此时，程序总的运行时间为：
```
T(n) = n * t(statement1)
```
因为运行时间和n有关，时间复杂度为O(n)。

#### Constant Times Loop
```c
for (i = 0; i < 4; ++i)
    statement1；
```

此时，程序总的运行时间为：
```
T(n) = 4 * t(statement1)
```
因为循环的次数和n无关，时间复杂度为O(1)。

#### Nested Loops 
```c
for (i = 0; i < n; ++i)
    for (j = 0; j < m; ++j)
        statement1;
```

此时，程序总的运行时间为：
```
T(n) = n * m * t(statement1)
```
循环中嵌套了一层循环，时间复杂度为O(n²)。

### Function Call Statement
计算函数调用语句的时间复杂度的一个方法是把被调用函数的时间复杂度用一个变量表示
，先将整体的时间复杂度表示出来，然后将表示调用函数时间复杂度的变量代入进去。例如：
```c
for (i = 0; i < n; ++i) {
    fn1();
    for (j = 0; j < n; ++j)
        fn2();
 }
```
要计算该程序的时间复杂度，先将整体时间复杂度表示出来：
```
T(n) = n * [t(fn1()) + n * t(fn2())]
```
再将`t(fn1())`和`t(fn2())`代入进去进行求解即可。


以上就是这篇记录的全部内容，下一篇重点介绍**递归程序**的时间复杂度的求解方法。

