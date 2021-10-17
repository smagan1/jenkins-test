#!/bin/bash
echo "this script is from github"
declare -i NUMBERONE=2
declare -i NUMBERTWO=3
NUMBER=$(($NUMBERONE * $NUMBERTWO))
echo "$NUMBER"
echo "This was multiplied"
