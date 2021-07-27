#!/bin/bash

# for fnst g08 push


if [ $# == 0 ] 
then
    git add .
    git commit -m "Update TODO.md"
elif [ $# == 1 ]
then
    git add .
    git commit -m "$1"
else
    echo Usage: $0 [commit_message]
    exit
fi

git push origin main
