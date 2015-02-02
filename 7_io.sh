################################### Input reading #######################################

echo -n "Introduce the file name: "
read name

#################################### Create file ########################################

filename=$name".txt"

# Create and write the text into the file
echo "second text" > $filename

# Write the text at the 
echo "third text" >> $filename
echo "fourth line" >> $filename

##################################### Read file ########################################$

# Read line by line
while read line
do
	echo $line
done < $filename