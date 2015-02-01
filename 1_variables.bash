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