#!/bin/bash

echo "git installation"

if [ "$(uname)" == "Linux" ];then   #$(uname) will give os type.
        echo "This is my os type "$(uname)" to install below packages"
        sudo apt-get update
        sudo apt-get remove git
        echo "===install git ==="
        sudo apt-get install git
        git --version
elif [ "$(uname)" == "naveen" ];then
        echo "This is macos,please install below package"
        brew install git
else
        echo "The listed os is not there"
fi

