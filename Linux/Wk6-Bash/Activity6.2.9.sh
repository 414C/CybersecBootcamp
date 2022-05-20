#!/usr/bin/env bash

#our file variable
files=(
  '/etc/shadow'
  '/etc/passwd'
)

#loop through the file list and list permissions
for file in ${files[@]}
do
  ls -l $file
done

#get list of users with a home folder
homeDirs=$(ls /home)

#check sudo permissions for each user in our list
for user in ${homeDirs[@]}
do
  sudo -l -U  $user
done

#run in a single line:
#for user in $(ls /home); do sudo -lU $user; done

#list of commands
coms=("date","uname -a","hostname -s")

#for i in {0..2}
#do
#  results=$(${coms[$i]})
#  echo -e "\nThe results of the \"${coms[$i]}\" command are:"
#  echo $results
#done

oldIFS=$IFS
IFS=','
for com in ${coms[@]}
do
  echo -e "\nThe results of the $com command are:"
  eval "$com"
done
IFS=$oldIFS
