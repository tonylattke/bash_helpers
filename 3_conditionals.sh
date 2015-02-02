#!/bin/bash

# Commpare Values
aux=60

equal=$(($aux == 42))
not_equal=$(($aux != 42))

less_than=$(($aux < 42))
more_than=$(($aux > 42))
less_equal_than=$(($aux <= 42))
more_equal_than=$(($aux >= 42))

operator_or=$(($aux>42 || 23<$aux))
operator_and=$(($aux>42 && 23<$aux))

# If .. then .. else ..
number=23
if [[ $number -eq 23 ]]; then
	echo 'Number is 23'
else
	echo 'Number is not 23'
fi

# If .. then .. else if .. then .. else ..
foo=1
bar=2
baz=3

if [[ $foo -eq $baz ]]; then
	echo 'It is 1'
elif [[ $bar -eq $baz ]]; then
	echo 'It is 2'
else
	echo 'It is not 1 or 2'
fi