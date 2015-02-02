# Even or not
# @number : Number to decide
# @return : 1 if the number is even, otherwise 0
even() {
	echo $(($1 % 2 == 0)) # Argument is $1
}

name=Tony