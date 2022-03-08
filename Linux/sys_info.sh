#!/bin/bash/

# Check if script was run as root. Exit if true.
if [ $UID -eq 0 ]
then
  echo "Please do not run this script as root."
  exit
fi

# Define Variables
output=$HOME/research/sys_info.txt

#Check if directory exist
if [ ! -d $HOME/research ]
then
 mkdir $HOME/research
fi


# Check if output file exist and if so remove it or overwrite it
if [ -f $output ]
then
   > $output
fi


# Create file list
files=( 
'/etc/shadow/' 
'/etc/passwd/'
'/etc/hosts/'
)

# Check for permissions on the file
for file in ${files[@]}
  do
   ls -l
  done

