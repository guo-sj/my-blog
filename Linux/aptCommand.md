# The Apt Command

## Question
What does **apt** command do?

## Answer
*apt* has the following functions:
- update package index
- upgrade packages
- install packages
- remove packages
- list packages
- search package
- show package

### Update package index
The APT package index is basically a database that holds records of available packages from the repositories enabled in your system.  

The following command will pull the latest changes from the APT repositories:
```sh
$ sudo apt update
```

**Always update the package index before upgrading or installing new packages.**

### Upgrage packages
Regularly updating you Linux system is one of the most important aspects of overall system security.

The following command will upgrade the installed packages to their latest version:
```sh
$ sudo apt upgrade
```

To upgrade a single package use this command:
```sh
$ sudo apt upgrade package_name
```

### Install packages
Installing packages is as simple as running the following command:
```sh
$ sudo apt install package_name
```

Installing multiple packages at the same time by running the following command:
```sh
$ sudo apt install package1 package2 ...
```

### Remove package
To remove an installed package type the following:
```sh
$ sudo apt remove package_name
```

You can also specify multiple packages, separated by spaces:
```sh
$ sudo apt remove package1 package2 ...
```

The *remove* command will uninstall the given packages, but it may leave some configuration files behind. If you want to remove the package include all configuration files, use *purge* instead of *remove*:
```sh
$ sudo apt purge package_name
```

Whenever a new package that depends on other packages is installed on the system, the package dependencies will be installed too. When the package is removed, the dependencies will still on the system. This leftover packages are no longer used and can be removed by the following command:
```sh
$ sudo apt autoremove
```

### List package
The *list* command allows you to list the *available, installed* and *upgradeable* packages.
To list all available packages use the following command:
```sh
$ sudo apt list
```

To list only installed packages type:
```sh
$ sudo apt list --installed
```

Getting a list of the upgradeable packages may be useful before actually upgrading the packages:
```sh 
$ sudo apt list --upgradeable
``` 
### Search package
You can use APT command to search a package before installing it:
```sh
$ sudo apt search package_name
``` 

### Show package
If you want to know something about a package you want to remove or install, type:
```sh
$ sudo apt show package_name
``` 
