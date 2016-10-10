#!/bin/bash

# Written by Karolis Uziela in 2012

if [ $# != 4 ] ; then
    echo "
Usage: 

$0 [Parameters]

Parameters:
<line> 
<file>
<which> FIRST or LAST (where the line has to be pasted?)
<delimiter> SPACE TAB or NONE

"
    exit 1
fi

line=$1
file=$2
which=$3
del=$4

count=`cat $file | wc -l`

if [ "$del" == "TAB" ] ; then
    dm="\t"
elif [ "$del" == "SPACE" ] ; then
    dm=" "
elif [ "$del" == "NONE" ] ; then
    dm=""
fi


if [ "$which" == "FIRST" ] ; then
    for i in `seq 1 $count` ; do echo $line ; done | paste -d "$dm" - $file 
elif [ "$which" == "LAST" ] ; then
    for i in `seq 1 $count` ; do echo $line ; done | paste -d "$dm" $file -
else
    echo "ERROR: Incorrect <which> parameter for pasting"
fi
