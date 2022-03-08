#!/bin/bash

echo "Week 6 MY First Bash Script"
date


#uname Info

echo "Machine Type Info:"
echo $MACHTYPE
echo -e "Uname info: $(uname -a) \n" 

#ip address
echo -e "IP Info: $(ip addr | head -9 | tail -1) \n"

#hostname

echo "Hostname: $(hostname) "
