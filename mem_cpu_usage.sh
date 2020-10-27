#!/bin/bash
mkdir -p temp
cd temp
if [ ! -f hourly_log.txt ]
then
	touch hourly_log.txt
fi
top -b -n 1 >> hourly_log.txt
echo "init hourly log with mem usage"
mpstat >> hourly_log.txt
echo "finish"
