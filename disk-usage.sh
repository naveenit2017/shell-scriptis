#!/bin/bash
disk_usage=$(df -h |grep /dev/xvda16 |awk '{print $5}' |cut -d '%' -f1)
echo "The total disk usage is : $disk_usage"

if [ $disk_usage -gt 80 ];then
        echo "The disk size is high please clear"
else
        echo "The disk size is normal no need to take any action"
fi
