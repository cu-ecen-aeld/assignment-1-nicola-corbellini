#!/bin/bash

filesdir=$1
searchstr=$2

if [ $# != 2 ]; then
	echo 'Not enough input arguments'
	exit 1
fi

if ! [ -d $filesdir ]; then
	 echo $filesdir 'is not a directory in the filesystem'
	 exit 1
 fi
 
X=$(ls -R "${filesdir}"/* | wc -l)
Y=$(cat $(ls -R "${filesdir}"/*) | grep "${searchstr}" | wc -l)
echo 'The number of files are' $X 'and the number of matching lines are' $Y
