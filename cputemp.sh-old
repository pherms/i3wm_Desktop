#!/bin/bash

degrees=$(exec sensors | grep -oP 'Package.*?\+\K[0-9]+')
#echo $degrees

if (("$degrees" <= "10" ))
then
	echo " $(exec sensors | grep -oP 'Package.*?\+\K[0-9]+') C"
elif (("$degrees" > "11" )) && (("$degrees" <= "25" ))
then
	echo " $(exec sensors | grep -oP 'Package.*?\+\K[0-9]+') C"
elif (("$degrees" > "26" )) && (("$degrees" <= "50" ))
then
	echo " $(exec sensors | grep -oP 'Package.*?\+\K[0-9]+') C"
elif (("$degrees" > "51" )) && (( "$degrees" <= "85" ))
then
	echo " $(exec sensors | grep -oP 'Package.*?\+\K[0-9]+') C"
elif (("$degrees" > "86" ))
then
	echo " $(exec sensors | grep -oP 'Package.*?\+\K[0-9]+') C"
fi
