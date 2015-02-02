#!/bin/bash

# While .. then ..
echo 'While'
i=1
while [[ $i < 5 ]]; do
	echo $i
	i=$(($i+1))
done

# For .. then ..
echo 'For'
for (( i = 0; i < 5; i++ )); do
	echo $i
done

# For .. in .. then ..
echo 'For in'
numbers=(1 2 3 4 5)
for i in ${numbers[*]}; do
	echo $i
done