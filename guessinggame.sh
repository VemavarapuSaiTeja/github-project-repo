#!/usr/bin/env bash
# File: guessinggame.sh

#guessinggame function starts below
function guessinggame {
while [ ${#value} -eq 0 ] || [ ${#value} -ne 0 ]
do
	read value
	if [[ ${#value} -eq 0 ]]; then
		printf "Not entered the value? Please enter it again : "
	elif [ ${value} -lt $total_files ]; then
		echo "Given value is too low. Guess the right value again :- "
	elif [ ${value} -gt $total_files ]; then
		echo "Given value is too high. Guess the right value again :- "
	else
		echo "Congrats. You have guessed the right value of total files present in the current directory."
		echo "And the total number of files present in the current directory are : $total_files"
		break
	fi
done
}

#counting the number of files present in the current directory and storing the value in a variable called total_files
total_files=`ls -1 . | wc -l`    #if you want to count including hidden files then replace -1 with -1a in total_files variable
echo "How many files are present in the current directory? Guess the right answer :- "

#calling the function guessinggame as below
guessinggame
