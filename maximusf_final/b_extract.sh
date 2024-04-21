#!/bin/bash

SUB=./submissions
NEWLOG=$SUB/newest.log

if [ ! -d "$SUB" ]; then
	echo "Submissions directory does not exist."
	exit
fi

if [ ! -f "$NEWLOG" ]; then
	echo "Newest log file does not exist."
	exit
fi

NEWEST=$(head -n 1 "$NEWLOG")
NEWTAR=$SUB/$NEWEST.tar.gz

if [ ! -f "$NEWTAR" ]; then
	echo "Newest tar file does not exist."
	exit
fi

mkdir -p testing
tar -xzf "$NEWTAR" -C testing

