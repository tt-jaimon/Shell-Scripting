#!/bin/bash

stop=0
while [ "$stop" = 0 ]
do
	clear
	echo "Menu"
	cat menuoptions
	echo
	echo -n 'your choice: '
	read reply
	echo
	case "$reply" in
	"1")
	echo -n "Enter the 1st Number: "
	read a
	echo -n "ENter the 2nd Number: "
	read b
	sum=`expr $a + $b`
	echo -n "$a + $b = $sum"
	echo 
	echo -n "Press any key to continue"
	read x
	;;
	"2")
	echo -n "Enter 1st number : "
	read a
	echo -n "Enter 2nd Number : "
	read b
	prod=`expr $a \* $b`
	echo -n "$a * $b = $prod "
	echo
	echo -n "Press any key to continue"
	read x
	;;
	"3")
	echo -n "Enter the file name you wish to read: "
	read f
	less $f
	;;
	"4")
	stop=1
	;;
	*)
	echo "illegal choice"
	echo 
        echo -n "Press any key to continue"
        read x
	;;
	esac
	echo
done
exit 0
