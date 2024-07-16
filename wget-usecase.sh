#!/bin/bash
echo "This is real time use case for download prometheus"
if [ -e "prometheus-2.53.1.linux-amd64.tar.gz" ];then
        echo "The file is available and extracting --------------------------------"
        tar -zxvf prometheus-2.53.1.linux-amd64.tar.gz
else
        echo "Donload the file and extract it "
        wget https://github.com/prometheus/prometheus/releases/download/v2.53.1/prometheus-2.53.1.linux-amd64.tar.gz
        tar -zxvf prometheus-2.53.1.linux-amd64.tar.gz
fi
echo "The file is downloaded and extracted"
