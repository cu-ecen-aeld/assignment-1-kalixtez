#!/bin/bash

PATHARG=${1%/*}
FILENAME=${1##*/}

if [[ -z $1 || -z $2 ]]; then
	echo "One of the arguments was not specified."
	exit 1

fi

if ! [ -d $PATHARG ]; then
	mkdir -p "$PATHARG"
fi

touch $PATHARG/$FILENAME
echo $2 > $PATHARG/$FILENAME 