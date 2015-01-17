#!/bin/bash

for i in UTF-16LE UTF-16BE UTF-32LE UTF-32BE; do
   for j in l b L B; do
       str=$(strings -e ${j} `pwd`/Tests/StringFileTest/${i}.txt)
       echo "${i}.txt as ${j}: ${str}"
   done
done 

