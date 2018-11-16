#!/bin/bash

if [ $# != 2 ]
then
	echo "Sorry we need exactly 2 arguments"
	exit 1
fi

val=`ls`
found=0
for each in $val
do
	if [ $each = $1 ]
	then
		found=1
	fi
done

if [ $found = 0 ]
then
	echo "Sorry no file with name $1 exits"
	exit 1
fi

val=`wc -l $1 | awk '{print $1}'`
if [ $val = $2 ]
then 
	echo "You guessed the correct file length!" 
elif [ $val -gt $2 ]
then 
	echo "File is longer"
else
	echo "File is shorter"
fi
exit 0
