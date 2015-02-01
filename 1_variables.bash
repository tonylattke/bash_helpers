#!/bin/bash

################################## Printing Variables ###################################

# Using Strings
Foo="World"
echo "Hello," $Foo"!"

# Using numbers
Minutes=60
echo "1 Hour have" $Minutes "minutes."

# Using Floating point numbers
Celcius=0
Farenheit=$((32+$Celcius*9/5))
echo $Celcius "Celcius are" $Farenheit "Farenheit grades"

# Using Floating point numbers with fixed amount digits of the right
# Only the first 5 first digits of phi will be showed with %.5f
echo "1.618033988749894848" | awk '{printf "The golden ratio %.5f \n", $1}'

# Representation Hexadecimal of numbers on lowercase (uppercase use %X)
Red=0xFF0000
Green=0x00FF00
Blue=0x0000FF
printf "Hexadecimal code of:\nRed: "
printf 0x%X `echo $(( $Red ))`
printf "\nGreen: "
printf 0x%X `echo $(( $Green ))`
printf "\nBlue: "
printf 0x%X `echo $(( $Blue ))`
printf "\n"

# Print text with multiline string
printf "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\
Phasellus mattis ac tortor sed fringilla. Etiam aliquam\
turpis sit amet nisi molestie, nec accumsan massa tempus.\n"

################################## Operating Variables ##################################

# Numbers
foo=23
bar=19
baz=$(($foo+$bar))				# Plus
echo "$foo + $bar is: $baz"

foo=69
bar=27
baz=$(($foo-$bar))				# Minus
echo "$foo - $bar is: $baz"

foo=7
bar=6
baz=$(($foo*$bar))				# Multiply
echo "$foo * $bar is: $baz"

foo=420
bar=10
baz=$(($foo/$bar))				# Divide
echo "$foo / $bar is: $baz"

foo=429
bar=43
baz=$(($foo%$bar))				# Module
echo "$foo mod $bar is: $baz"

foo=6.48074069840786
bar=2
baz=`echo $foo^$bar | bc -l`	#Pow
echo "$foo to the power of $bar is: $baz"

# Strings
foo="Bash"
bar="Works"
echo $foo" "$bar

foo='"It Wokrs"' # Single quotes print literally text
echo $foo

foo="Lorem ipsum dolor sit amet"
echo "$foo" | tr ' ' '_' # Replace 

foo="Lorem ipsum dolor sit amet"
echo "${foo:0:1}"	# First char on string "Lorem ipsum dolor sit amet"
echo "${foo:6:12}"	# 6 till 12 chars on string "Lorem ipsum dolor sit amet"
echo "${foo:0:5}"	# First 5 chars on string "Lorem ipsum dolor sit amet"
echo "${foo:6:20}"	# 6 till the end chars on string "Lorem ipsum dolor sit amet"