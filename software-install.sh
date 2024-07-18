#!/bin/bash
echo "This script will take the inputs form commandline and install the softwares"
if [ $# -eq 0 ]
then
        echo "please add atleast one positional argument"
        exit 1
fi
if [ $(id -u) -ne 0 ]
then
        echo "please run from the root user"
        exit 2
fi
for software in $@
do
        if which $software &> /dev/null
        then
                echo "The software $software already installed"
        else
                echo "Install the required software"
                apt-get install $software &> /dev/null
                if [ $? -eq 0 ]
                then
                        echo "The software $software installed successfully"
                else
                        echo "There is issue please check the code"
                fi
        fi
done
