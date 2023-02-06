#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=guessing_game -t --no-align -c"
echo "Enter your username:"
read USER_NAME
RAND=$(($RANDOM%1001))
GUESSED=0
GUESSES=0
USERNAME_RESULT=$($PSQL "SELECT username FROM games_played WHERE username='$USER_NAME'")

if [[ -z $USERNAME_RESULT ]]
then
echo "Welcome, $USER_NAME! It looks like this is your first time here."
echo "Guess the secret number between 1 and 1000:"
while [ $GUESSED == 0 ]
do
read GUESS
if [[ ! $GUESS =~ [0-9]+ ]]
then
echo "That is not an integer, guess again:" 
elif [ $GUESS == $RAND ]
then
((GUESSES+=1))
SAVE_GAME=$($PSQL "INSERT INTO games_played(username, guesses) VALUES('$USER_NAME', $GUESSES)")
echo "You guessed it in $GUESSES tries. The secret number was $RAND. Nice job!"
GUESSED=1
elif [ $GUESS -gt $RAND ]
then
echo "It's lower than that, guess again:"
else 
echo "It's higher than that, guess again:"
fi
((GUESSES+=1))
done
else
TOTAL_GAMES=$($PSQL "SELECT COUNT(*) FROM games_played WHERE username='$USER_NAME'")
BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games_played WHERE username='$USER_NAME'")
echo "Welcome back, $USER_NAME! You have played $TOTAL_GAMES games, and your best game took $BEST_GAME guesses."
echo "Guess the secret number between 1 and 1000:"
while [ $GUESSED == 0 ]
do
read GUESS
if [[ ! $GUESS =~ [0-9]+ ]]
then
echo "That is not an integer, guess again:" 
elif [ $GUESS == $RAND ]
then
((GUESSES+=1))
SAVE_GAME=$($PSQL "INSERT INTO games_played(username, guesses) VALUES('$USER_NAME', $GUESSES)")
echo "You guessed it in $GUESSES tries. The secret number was $RAND. Nice job!"
GUESSED=1
elif [ $GUESS -gt $RAND ]
then
echo "It's lower than that, guess again:"
else 
echo "It's higher than that, guess again:"
fi
((GUESSES+=1))
done
fi
