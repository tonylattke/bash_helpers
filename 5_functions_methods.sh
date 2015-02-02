############################# Example 1 - Create a function #############################

# Even or not
# @number : Number to decide
# @return : 1 if the number is even, otherwise 0
even() {
	echo $(($1 % 2 == 0)) # Argument is $1
}

################################# Example 2 - Recursion #################################

# Factorial of number
# @number : Number
# @return : Factorial value of number
factorial() {
	if [[ $1 -le 1 ]]; then
		echo 1
	else
		i=$(($1-1))
		aux=$(factorial $i)
		echo $(( $1 *  $aux ))
	fi
}

# Fibonacci
# @value : Number
# @return : Fibonacci value
fibonacci() {
	if [[ $1 -eq 0 ]]; then
		echo 0
	elif [[ $1 -eq 1 ]]; then
		echo 1
	else
		i=$(($1-1))
		aux1=$(fibonacci $i)

		j=$(($1-2))
		aux2=$(fibonacci $j)

		echo $(( $aux1 + $aux2 ))
	fi
}

################################## Testing Functions ####################################

# Even
for (( i = 0; i < 10; i++ )); do
	if [[ $(even $i) -eq 1 ]]; then
		echo $i" - Even"
	else
		echo $i" - Odd"
	fi
done

# Factorial
aux=$(factorial 5)
echo $aux

# Fibonacci
aux=$(fibonacci 7)
echo $aux