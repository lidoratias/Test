#!/bin/bash
i=0
while [ $i -le 30 ]
do
	cur_time=$(date +"%H:%M:%S")
	mkdir "file-$cur_time"
	let "i += 1"
	sleep 1
done
