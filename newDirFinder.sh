#!/bin/bash

if [ $# != 0 ]
then 
	echo "Sorry There should not be any command line arguments"
	exit 1
fi

echo -n "Enter directory path:"
read dir

if [ ! -d $dir ]
then
	echo "Sorry no such directory exist"
	exit 1
fi

echo "The directory contents are "
val=`ls $dir`
echo 

for each in $val
do
echo $each
done

echo -n "Enter the last character for the file name:"
read ch
if [ `expr length $ch` != 1 ]
then 
	echo "Sorry only one character is allowed"
	exit 1
fi

for each in $val
do
	len=`expr length $each`
	if [ `expr substr $each $len 1` = $ch ]
	then
		echo $each
	fi
done
exit 0
