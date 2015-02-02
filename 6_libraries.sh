###################################### Datetime #########################################
# Now
aux=$(date)
echo $aux

# Now - 2 Hours
aux=$(date -d -2hours)
echo $aux

######################################## Random #########################################

# Random number between 0 and 1
aux=' { srand(); print rand() } '
echo | awk "$aux"

# Random int on range
# Example 1
aux=$(( ( RANDOM % 100 )  + 1 )) # Value between 1 and 100
echo $aux

# Example 2
aux=$(shuf -i 1-100 -n 1)
echo $aux