#!/usr/bin/sh
echo "###### Welcome To Guessing Game ######"
file_count=`ls -ltr | wc -l`
echo "Guess number of files in Current Directory"
Guess_Input(){
        Guess='y'
        read guess_input
}

Guess_Input

while [[ $Guess == 'y' ]]
do
        if [[ $guess_input > $file_count ]]; then
                echo "Your Guess is Too High"
        elif [[ $guess_input < $file_count ]]; then
                echo "Your Guess is too low"
        else
                echo "Hurray!! You Guessed Correct"
                exit 0
        fi
        Guess_Input
done