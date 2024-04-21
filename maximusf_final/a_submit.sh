#!/bin/bash

SUB=./submissions
CURR=$(date +%Y%m%d_%H%M%S)
mkdir -p "$SUB"
mkdir -p "$SUB/$CURR"
cp -r Makefile inc src "$SUB/$CURR"
tar -czf "$SUB/$CURR.tar.gz" -C "$SUB" "$CURR"
echo "$CURR" > "$SUB/newest.log"
rm -rf "$SUB/$CURR"

