#!/bin/bash

# list of variables
states=('Alabama' 'Florida' 'Georgia' 'Hawaii' 'Louisiana')

# Create For Loops

for state in ${states[@]};
do
 if [ $state == 'Hawaii' ];
 then
     echo "$state is the best!"
 else
     echo "I'm not fond of $state."
fi
done

#Create Variables
nums=$(echo {0..9})

# Create For Loops
# Create loops that prints only 3, 5 and 7
for num in ${nums[@]};
do
  if [ $num = 3 ] || [ $num = 5 ] || [ $num = 7 ]
  then
   echo $num
  fi
done

ls_out=$(ls)

for x in ${ls_out[@]};
do
  echo $x
done

