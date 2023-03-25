#!/bin/bash

writefile=$1
writestr=$2

if [ $# != 2 ]; then
	echo "Not enough input arguments"
	exit 1
fi

if ! [ -f $writefile ]; then
	mkdir -p $(dirname $writefile)
fi

echo $writestr > $writefile
