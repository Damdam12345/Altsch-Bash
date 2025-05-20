#!/bin/bash

#To confirm if there is an input of any argument
if [[ $# -ne 1 ]];
then
  echo "Input an absolute path for example: [/home/user/directory]"
  echo "please try again"
  exit 1
fi

#variable assigned to the argument provided
path=$1

#check if directory exists
if [[ -d "$path" ]];
then
  count=$(find "$path" -type f | wc -l 2> /dev/null)
  echo "Total count of files in $path: $count "
else
     echo "Directory does not exist"
fi
