#!/bin/bash
echo "This example is for the check status of docker"
#status=$(systemctl status docker |awk 'NR==3 {print}' |cut -d ':' -f2 |cut -d '(' -f1) #we can use any one use it.
status=`systemctl status docker |awk 'NR==3 {print}' |cut -d ':' -f2 |cut -d '(' -f1`
echo "Docker service status is $status"

if [  "$status" = "inactive" ]; then
        echo "Please start the docker service"
        sudo systemctl start docker
        echo "Docker is started"
        sudo systemctl status docker
else
        echo "everything is cool"
fi
