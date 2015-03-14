#!/bin/bash

n=5

while [ $n != "45" ]
do

yes $n | qemu-arm -L /usr/arm-linux-gnueabihf ./fibseq & 

sleep 0.3

n=$(($n+1))

done


