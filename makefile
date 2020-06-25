all:Readme

Readme: guessinggame.sh
	touch README.md
	echo "# THE GUESSING GAME" > README.md
	echo " DATE AND TIME -" >> README.md
	date >> README.md
	echo "Number of Lines of Code -" >> README.md
	wc -l guessinggame.sh >> README.md
