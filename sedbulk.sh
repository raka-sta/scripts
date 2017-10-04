#!/bin/bash
declare -a pseud=("mt_fhi")
declare -a xc=("pbe" "revpbe" "vdw-df" "vdw-dfrevpbe")
# get length of an array
pseudlength=${#pseud[@]}
xclength=${#xc[@]}
# use for loop to read all values and indexes


for (( i=1; i<${pseudlength}+1; i++ ));
do
  #echo $i " / " ${arraylength} " : " "O.pbe-"${array[$i-1]}".UPF"
  for (( j=1; j<${xclength}+1; j++ ));do
	RUNDIR="${pseud[$i-1]}/${xc[$j-1]}";
	for k in `seq 80 1 120`;do
sed -i 's/ecutwfc = 79/ecutwfc = 480/g' $RUNDIR/$k/input.in ;
sed -i 's/ecutrho = 640/ecutrho = 3680/g' $RUNDIR/$k/input.in ;
done
done
#cd ..;
done
