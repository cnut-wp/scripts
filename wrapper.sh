#!/bin/bash
#  wraper for shell script
#  wrapper [-f outputFile(default: tmp)] arg1 ...
if [ $1 = "-f" ]
then
  FILE=$2
  shift
  shift
fi 
FILE=${FILE:-tmp}
program=$1
shift
(exec $program $@ 2>&1) | tee $FILE
