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

#To check if the file exist in the directory
if [[ -e "$file" ]];
then
  echo "file exists here: $file"
else
     echo "File does not exist"
fi

#OR
#---------------------------------------------------------------------

#Prompt user to type the name of the file to search for
#echo "Hi $USER, input the name of the file here"
#read FILE

#To check if the file exist in the directory
#if [[ -e $FILE ]];
#then
#  echo "file exists"
#else
#     echo "File does not exist"
#fi
