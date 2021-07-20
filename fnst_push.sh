#!/bin/bash

# for fnst g08 push

if [ $# != 1 ] 
then
    echo Usage: $0 [commit message]
    exit
fi

git add .
git commit -m "$1"
git push origin main
