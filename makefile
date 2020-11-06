all: README.md

README.md: guessinggame.sh
	echo "## The Unix Workbench course Assignment From CourseEra" > README.md
	echo "*by Johns Hopkins University on [coursera.org].*" >> README.md
	echo "\n**Description**: make a program called *guessinggame.sh*. This program will continuously ask the user to guess the number of files in the current directory, until they guess the correct number. The user input will be acknowleged in the program .if their guessed input  is grater than number of files then they are informed saying there guess is too high ,if gussed input is lesser than the number of files then they are informed its too low. Once the user guesses the correct number of files in the current directory they will be Congraulated." >> README.md
	echo -n "\n**Make date**: " >> README.md
	date >> README.md
	echo -n "\n**Number of lines in guessinggame.sh:** " >> README.md
	grep -c '' guessinggame.sh >> README.md

clean:
	rm README.md
