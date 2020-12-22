#!/bin/bash
file=$1
cpp_file=$2
o_file=`echo $1 | awk '{print substr($0, 1, length($0)-4)}'`.o


nasm -felf64 $file && ld $o_file 
g++ -Wall -no-pie $o_file $cpp_file -o output
