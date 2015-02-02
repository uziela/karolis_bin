#!/bin/bash

# Written by Karolis Uziela in 2015

script_name=`basename $0`

if [ $# != 2 ] ; then
    echo_both "
Usage: 

$script_name [Parameters]

Parameters:
<target-file>
<model-file>

"
    exit 1
fi

target_file=$1
model_file=$2

TFILE="/tmp/pymol_align.$$.tmp"

#set dash_color,

target_base=`basename $target_file .pdb`
model_base=`basename $model_file .pdb`

echo "
load $target_file
load $model_file
hide all
show cartoon
align $target_base, $model_base
" > $TFILE

pymol -u $TFILE

rm $TFILE
