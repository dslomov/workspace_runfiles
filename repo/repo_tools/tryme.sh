#!/bin/bash

echo "$*" > $1
echo "dir: $(pwd)" >> $1
find .  >> $1
