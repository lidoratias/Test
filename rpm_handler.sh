#!/bin/bash
is_exist=$(rpm -qa | grep $1)
sudo alien "$1.rpm"
if [ -z "$is_exist" ]
then
	sudo dpkg "$1.deb"
else
	sudo dpkg -i "$1.deb"
fi
