#!/bin/sh
while :
do 	
	date | cat >> sampling.txt
	sleep 5
done
#This is a shell script to wrtie the current time into file "sampling.txt" every 5 seconds #until user interrupts
