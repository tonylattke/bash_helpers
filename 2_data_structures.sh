#!/bin/bash

####################################### Tuples ##########################################

# Tuple
mytuple=("Bruce","Wayne")
echo $mytuple

# Triplet
mytriplet=("Red","Green","Blue")
echo $mytriplet

# N-Tuple
ntuple=("Batman","Superman","Wonder Woman","Green Light","Flash","J'onn")
echo $ntuple

# Access (to do)

######################################## Array ##########################################

# Empty array
empty_list=()

# Append elements to the array
numbers=$empty_array
numbers[0]=1
numbers[1]=2
numbers[2]=3
echo ${numbers[*]}

# Delete the last element
unset numbers[-1]
echo ${numbers[*]}

# Array loaded
lost=(4 8 15 16 23 42)
echo ${lost[*]}

# Length
echo ${#lost[@]}

# Concat
array1=(1 2)
array2=(3 4 5)
array_final=("${array1[@]}" "${array2[@]}")
echo ${array_final[*]}

# Change value of element on array
lost[0]=1