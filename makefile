README.md: guessinggame.sh
	echo "# The Unix Work Bench Assignment" > README.md
	echo "" >> README.md
	echo "The date and time at which **make** was run : " >> README.md
	date +"%F %r %Z" >> README.md
	echo "" >> README.md
	echo "The number of lines of code contained in **guessinggame.sh** : " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md
