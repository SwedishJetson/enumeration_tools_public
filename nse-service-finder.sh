#!/bin/bash

service=$1

#Search function
scripts=$(ls /usr/share/nmap/scripts | grep $service)

#output and search
echo \#$service\#
for i in $scripts; do
	printf "\n"
	echo $i
	cat $(locate $i) | grep @usage -C 2 | grep nmap
	cat $(locate $i) | grep @args
	printf "\n"
done
