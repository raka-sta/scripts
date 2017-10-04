#!/bin/bash
declare -a pseud=("hgh" "mt_fhi")
declare -a xc=("pbe" "revpbe" "vdw-df" "vdw-dfrevpbe")
# get length of an array
pseudlength=${#pseud[@]}
xclength=${#xc[@]}
# use for loop to read all values and indexes


for (( i=1; i<${pseudlength}+1; i++ ));
do
  #echo $i " / " ${arraylength} " : " "O.pbe-"${array[$i-1]}".UPF"
  for (( j=1; j<${xclength}+1; j++ ));do
	FILENAME+=""${pseud[$i-1]}.${xc[$j-1]}".dat "
done
done

plot for [i=1:8] FILENAME(i) using 1:2 with linespoints 
