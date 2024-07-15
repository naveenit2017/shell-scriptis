#!/bin/bash
echo "This script will give the higset volum occupied files in given path"
path=$1
sudo du -ha $path |sort -hr |head -n 5 >>files.txt
echo "=================The listed $path"
cat files.txt
