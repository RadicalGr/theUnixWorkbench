all: README.md

README.md:
	echo "Title: Guessing Game" > README.md
	echo -n "Date made: " >> README.md
	date >> README.md
	echo -n "Lines of Code: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
