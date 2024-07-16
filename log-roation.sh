#!/bin/bash
echo "This script will help us to delete 30 days older files"
path=$1
find $path -mtime +30 -delete
if [ $? -eq 0 ];then
        echo "The files are deleted successfully"
else
        echo "There is a problem please check the logic"
fi
