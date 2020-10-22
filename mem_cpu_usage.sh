#!/bin/bash
if test -f "/tmp/hourly_log.txt"; then
	rm /tmp/hourly_log.txt
fi
top -b -n 1 > /tmp/hourly_log.txt
echo "init hourly log with mem usage"
mpstat >> /tmp/hourly_log.txt
echo "finish"
