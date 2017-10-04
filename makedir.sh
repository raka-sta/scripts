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
  mkdir ${pseud[$i-1]};
  for (( j=1; j<${xclength}+1; j++ ));do 
   mkdir ${pseud[$i-1]}/${xc[$j-1]};
   for k in `seq 30 5 80`; do
#   mkdir ${pseud[$i-1]}/${xc[$j-1]}/$k;
   cp ../PP/*${pseud[$i-1]}.UPF ${pseud[$i-1]}/${xc[$j-1]}/$k;
#   cp *Name ${pseud[$i-1]}/${xc[$j-1]}/$k;
   
#   if (($i==3)) || (($i==4)); then
#   cp vdW_kernel_table ${pseud[$i-1]}/${xc[$j-1]}/$k;
   
#  fi
   done
  done
# cd ..;
done
