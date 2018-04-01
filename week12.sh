#! /bin/sh
# Week 12
# Don Yang
# CSCI 2461-70

#This command sets the read bit in order for the shell to read the file
chmod +rx script

#Look for all entries in /etc/passwd tha match the regular expression r.*t
grep r.*t /etc/passwd

#The easy way to create a literal and make the shell leave a string alone is to use quotes
grep 'r.*t' /etc/passwd

echo
#The difference between using double quotes and single quotes
#Double quotes
echo "Thre is no * in my path: $PATH"
#Single quotes
echo 'Thre is no * in my path: $PATH'

#To use a quote for a word like don't you have to put a backslash before the single quote
echo I don\'t like to drive

#Or you could put the whole sentence in double quotes 
echo "I don't like to drive"

#Arguments
./shiftex one two three
Argument: one
Argument: two
Argument: three

#Exit codes
ls / > /dev/null
echo $/

echo
#Conditionals
if [ $1 = hi ]; then
	echo 'The first argument was "hi"'
else
	echo -n 'The first argument was not "hi" --'
	echo It was '"'$1'"'
fi

#Loops
for str in one two three four; do
	echo $str
done
