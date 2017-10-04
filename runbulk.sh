#!/bin/bash
declare -a pseud=("mt_fhi")
declare -a xc=("pbe" "revpbe" "vdw-df" "vdw-dfrevpbe")
# get length of an array
pseudlength=${#pseud[@]}
xclength=${#xc[@]}
# use for loop to read all values and indexes

for (( i=1; i<${pseudlength}+1; i++ ));do
  cd ${pseud[$i-1]}/;
  #echo $i " / " ${arraylength} " : " "O.pbe-"${array[$i-1]}".UPF"
 for (( j=1; j<${xclength}+1; j++ ));do
  cd ${xc[$j-1]}/;

 for k in `seq 80 1 120`;do
  cd $k/;
  toss cx250.espresso.SINGLE.20;
  cd ..;

done
cd ..;
done
cd ..;
done
