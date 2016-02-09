#!/bin/sh

Root_dir='/home/viswanatha/python/test/'

base=`ls *.txt`
echo "$base"

for i in $base
do
echo $i
viswa=`echo $i | cut -d'.' -f1 `
echo $viswa
`mv $i $viswa.html` 
done







