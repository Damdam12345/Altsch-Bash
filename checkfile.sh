#!/bin/bash

#To confirm if there is an input of any argument
if [[ $# -ne 1 ]];
then
  echo "Input only one argument"
  echo "please try again"
  exit 1
fi

#variable assigned to the argument provided
file=$1

#search for file provided in the argument
check=$(find ~ -type f -name "$file" 2>/dev/null)

#To check if the file exist in the directory
if [[ -e "$check" ]];
then
  echo "file exists here: $check"
else
     echo "File does not exist"
fi

