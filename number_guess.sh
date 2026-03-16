#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
echo "Enter your username:"
read USERNAME

while [[ ${#USERNAME} -gt 22 ]]
do
  echo "This username is too long. Try again:"
  read USERNAME
done

USER_ID=$($PSQL "select user_id from users where username like '$USERNAME';")

if [[ -z $USER_ID ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  USER_ID=$($PSQL "insert into users(username) values('$USERNAME'); select user_id from users where username like '$USERNAME';")
else
  STATS_RESULT=$($PSQL "select count(*), min(tries) from games where user_id = $USER_ID;")
  echo $STATS_RESULT | while IFS="|" read GAMES_PLAYED BEST_GAME
  do
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  done
fi

RANDOM_NUMBER=$(( ($RANDOM % 1000) +1 ))
COUNTER=1

echo "Guess the secret number between 1 and 1000:"
read USER_GUESS

while [[ $USER_GUESS != $RANDOM_NUMBER ]]; do
  if [[ ! $USER_GUESS =~ ^[0-9]*$ ]]
  then
    echo "That is not an integer, guess again:"
    read USER_GUESS
  elif [[ $USER_GUESS -lt $RANDOM_NUMBER ]]
  then
    echo "It's higher than that, guess again:"
    read USER_GUESS
  elif [[ $USER_GUESS -gt $RANDOM_NUMBER ]]
  then
    echo "It's lower than that, guess again:"
    read USER_GUESS
  fi
  (( COUNTER++ ))
done
RESULT=$($PSQL "insert into games(user_id, tries) values($USER_ID, $COUNTER);")
echo "You guessed it in $COUNTER tries. The secret number was $RANDOM_NUMBER. Nice job!"
