#!/bin/bash

echo -n "Enter the file name : "
read f

i=0
for value in `cat $f`
do
i=`expr $i + 1`
echo "$i. $value"
done
