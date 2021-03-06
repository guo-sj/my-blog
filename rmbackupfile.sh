#!/bin/bash
# delete all backup file like "*~", ".*~"
# version 3.0
# gsj 6/2/2021

# judge argument's number 
if [ $# != 1 ]
then
    echo Usage: A single argument which is the directory to delete all backup file
    exit
fi

# judge argument's existence
if [ ! -d $1 ]
then
    echo 'The directory does not seem to exist!'
    exit
fi

# delete all backup file like "*~"
find $1 -name '*~' -delete
find $1 -name '.*~' -delete


exit
