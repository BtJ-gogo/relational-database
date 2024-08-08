#!/bin/bash

# prompt for username
echo Enter your username: 
read USERNAME

# connection and get user id
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
USER_ID=$($PSQL "SELECT user_id FROM users WHERE name = '$USERNAME'")

# if not exist user name
if [[ -z $USER_ID ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  INSERT_TO_USERS=$($PSQL "INSERT INTO users(name) VALUES('$USERNAME')")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE name = '$USERNAME'")
  INSERT_TO_GAMES=$($PSQL "INSERT INTO games(user_id, game_played, best_game) VALUES($USER_ID, 0, 1000)")

# if exist user name
else
  GET_GAME_INFO=$($PSQL "SELECT name, game_played, best_game FROM games FULL JOIN users USING(user_id) WHERE user_id = $USER_ID")
  IFS="|" read -r NAME GAME_PLAYED BEST_GAME <<< "$GET_GAME_INFO"
  echo "Welcome back, $NAME! You have played $GAME_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# generate a random variable
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))
#echo $SECRET_NUMBER

# prompt for input number
echo Guess the secret number between 1 and 1000:
read INPUT_NUMBER

# check input number
while true
do
  # if var is not number
  if [[ ! $INPUT_NUMBER =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    read INPUT_NUMBER
  # if var is number
  else
    break
  fi
done

COUNT=0
while true
do
  # if less than secret number 
  if [[ $INPUT_NUMBER -lt $SECRET_NUMBER ]]
  then
    ((COUNT++))
    echo "It's lower than that, guess again:"
  # if more than secret number
  elif [[ $INPUT_NUMBER -gt $SECRET_NUMBER ]]
  then
    ((COUNT++))
    echo "It's higher than that, guess again:"
  else
    ((COUNT++))
    echo "You guessed it in $COUNT tries. The secret number was $SECRET_NUMBER. Nice job!"
    break
  fi

  # input prompt
  read INPUT_NUMBER

  # check input number
  while true
  do
    # if var is not number
    if [[ ! $INPUT_NUMBER =~ ^[0-9]+$ ]]
    then
      echo "That is not an integer, guess again:"
      read INPUT_NUMBER
    # if var is number
    else
      break
    fi
  done
done

# get game result info from database
GET_GAME_RESULT=$($PSQL "SELECT game_played, best_game FROM games WHERE user_id = $USER_ID")
IFS="|" read -r GAME_PLAYED BEST_GAME <<< "$GET_GAME_RESULT"

#check best game val
((GAME_PLAYED++))
if [[ $COUNT -lt $BEST_GAME ]]
then
  # update best game if the current game is better
  UPDATE_GAME_RESULT=$($PSQL "UPDATE games SET game_played = $GAME_PLAYED, best_game = $COUNT WHERE user_id = $USER_ID")
else
  # just update game_played
  UPDATE_GAME_RESULT=$($PSQL "UPDATE games SET game_played = $GAME_PLAYED WHERE user_id = $USER_ID")
fi