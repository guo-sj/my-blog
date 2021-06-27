#!/bin/bash

# default commit message
if [ $# == 0 ]
then
    ../my-bash-script/gitpush.sh my-blog "Update TODO.md"
    exit
fi

../my-bash-script/gitpush.sh my-blog "$1"
exit
