#!/usr/bin/env bash

while true
do
	for i in $(seq 650); 
	do 
		#echo $((100 - $i)); 
		amixer set Capture $((65536 - ($i * 100)))
		sleep 0.001
	done
done

