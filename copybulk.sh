#!/bin/bash
declare -a pseud=("mt_fhi" "hgh")
declare -a xc=("pbe" "revpbe" "vdw-df" "vdw-dfrevpbe")
# get length of an array
pseudlength=${#pseud[@]}
xclength=${#xc[@]}
# use for loop to read all values and indexes


for (( i=1; i<${pseudlength}+1; i++ ));
do
  #echo $i " / " ${arraylength} " : " "O.pbe-"${array[$i-1]}".UPF"
  for (( j=1; j<${xclength}+1; j++ ));do
	RUNDIR="${pseud[$i-1]}/${xc[$j-1]}"
	for k in `seq 80 1 120`;do
cp mt_fhi/${xc[$j-1]}/$k/input.in $RUNDIR/$k/input.in;
sed -i 's/mt_fhi/hgh/g' $RUNDIR/$k/input.in;
#cp /mnt/lustre/toBeSync/silmi/02NormCons/cutoff/$RUNDIR/60/input.in $RUNDIR/
done
done
done
