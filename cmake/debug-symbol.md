# Debug Symbol

## Preface
`cmake` is something I am not familiar with but sometimes be involved by my work. One of the 
most frequent question about it is that how to produce `Makefile` that contains `debug symbol`, 
well, here is the skimmed answer.

## Answer
Try this:
```
$ cmake -DCMAKE_BUILD_TYPE=Debug <path-to-CMakeLists.txt>

$ make
```

## Referrence
1. [CMAKE_BUILD_TYPE](https://cmake.org/cmake/help/latest/variable/CMAKE_BUILD_TYPE.html)
