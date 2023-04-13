#! /usr/bin/bash

[[ $# -eq 0 ]] && length=8 || length=$1

lower=({a..k} {m..n} {p..z})
upper=({A..N} {P..Z})
nums=({2..9})
specials=($(echo "&+,:;=?@#|'<>.^()%!-[]{}" |  sed -e "s/./& /g"))

characters=( ${lower[@]} ${upper[@]} ${nums[@]} ${specials[@]} )
totalLen=${#characters[@]}

for (( i=0; i<$length; i++))
do
	passwd=${passwd}${characters[$(($RANDOM%$totalLen))]}
done
echo $passwd




