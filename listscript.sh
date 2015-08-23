#!/bin/bash

#base for automating the execution of a script with a single paramater
#multiple times. 
#Based from http://tldp.org/LDP/abs/html/othertypesv.html

MINPARAM=1
LISTLOCATION="" #Place file location here, including file extension

#[1] Improper # of parameter handling and help
if [ $# -lt MINPARAM ]
then
  echo "There are too few paramaters. try --help"
fi
if [ $1 = "--help" ]
then
  echo "This script runs a separate command for each line in the list at the"
  echo "list given at LISTLOCATION."
fi
#[END 1]

#[2] run command for each line in LISTLOCATION
if [ $1 = "--run" ]
then
  cat $LISTLOCATION | while read line
  do
    echo "" #Put command where echo is, eg. ./script --run $line
  done
fi
#[END 2]
