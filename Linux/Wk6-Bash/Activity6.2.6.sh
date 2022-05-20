#!/usr/bin/env bash

bestestStates=(
  'Georgia'
  'Colorado'
  'California'
  'Oregon'
  'Hawaii'
)

hawaiiFound=false

for state in ${bestestStates[@]}; do
  if [ $state == 'Hawaii' ]
  then
    hawaiiFound=true
  fi
done

if [ $hawaiiFound == true ]
then
  echo "Hawaii is the best!"
else
  echo "I'm not fond of Hawaii"
fi


for i in {0..9}
do
  if [ $i == 3 ] || [ $i == 5 ] || [ $i == 7 ]
  then
    echo $i
  fi
done


lsVar=$(ls)
for item in ${lsVar[@]}; do
 echo $item
done


superBonus=$(find /home -type f -perm 777 2> /dev/null)

for item in ${superBonus[@]}; do
  echo $item
done
