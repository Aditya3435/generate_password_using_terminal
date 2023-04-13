#! /usr/bin/bash

if [ $# -eq 1 ]
then
	length=$1
	count=1
elif [ $# -eq 2 ]
then
	length=$1
	count=$2
else 
	length=8
	count=1
fi

lower=({a..n} {p..z})
upper=({A..N} {P..Z})
nums=({1..9})
specials=($(echo "&+=?@#'<>.^%!-" |  sed -e "s/./& /g"))

characters=( ${lower[@]} ${upper[@]} ${nums[@]} ${specials[@]} )
totalLen=${#characters[@]}
for (( i=0; i<$count; i++))
do
	for (( j=0; j<$length; j++))
	do
		passwd=${passwd}${characters[$(($RANDOM%$totalLen))]}
	done
	echo $((i+1)): $passwd
	passwd=''
done



# Author: Aditya Maurya
# Github: github.com/Aditya3435

