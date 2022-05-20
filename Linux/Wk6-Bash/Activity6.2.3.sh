#!/usr/bin/env bash

if [ $UID = 0 ]
then
  echo "Running this script as root is NOT ALLOWED!"
  exit
fi

outPath="$HOME/research"

if  [ ! -d $outPath ]
then
  mkdir $outPath
fi

if [ -f $outPath/sys_info.txt ]
then
  rm $out$ath/sys_info.txt
fi

x=$(ip addr | grep inet | tail -2 | head -1)
echo $x

y=$(find /home -type f -perm 777)
echo $y