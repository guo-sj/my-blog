# Install Java

## Preface
How to install Java in Ubuntu by using default package manager?

## Method
Begin the process by updating the current packages to the latest version:
```sh
$ sudo apt update;sudo apt upgrade
```

Install Java by typing the following command:
```sh
$ sudo apt install default-jdk
```

Check if it was properly set up with commands:
```sh
$ java -version
openjdk version "11.0.11" 2021-04-20
OpenJDK Runtime Environment (build 11.0.11+9-Ubuntu-0ubuntu2.18.04)
OpenJDK 64-Bit Server VM (build 11.0.11+9-Ubuntu-0ubuntu2.18.04, mixed mode)

$ javac -version    # java compiler
javac 11.0.11
```

Done!
