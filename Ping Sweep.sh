#!/bin/bash

if ["$1" == "" ]
then 
echo "You forgot an IP address!"
echo "Syntax: ./Ping Sweep.sh 192.168.4"

for ip in `seq 1 254`; do
ping -c 1 192.168.4.x.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" & 
done
fi

#./Ping Sweep.sh 

#./Ping Sweep.sh  192.168.4