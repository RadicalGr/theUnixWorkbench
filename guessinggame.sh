#!/bin/bash
correct=0
num_files=$(ls -l -h | wc -l)
let num_files-=1

function check_guess {
	if [ $1 -eq $num_files ]
	then
		let correct=1
		echo "Congratulations"
	elif [ $1 -gt $num_files ]
	then
		echo "Guess was too high"
	else
		echo "Guess was too low"
	fi	
}

while [[ correct -eq 0 ]]
do
	echo "How many files are in the current directory?"
	read guess
	check_guess $guess
done
