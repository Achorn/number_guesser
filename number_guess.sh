#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"


START_GAME(){

  CONNECT_USER 
  USER_ID=$?

  RAN_NUM=$(($RANDOM%(1000-1+1)+1))
  
  echo "Guess the secret number between 1 and 1000:"
  GUESSES=1

  GUESS  $RAN_NUM $GUESSES $USER_ID
  ANSWER=$? 


  while  [ $ANSWER -ne $RAN_NUM ] 
  do
    GUESSES=$(($GUESSES+1))
    GUESS  $RAN_NUM $GUESSES $USER_ID
    ANSWER=$?
  done
}


CONNECT_USER(){
  echo 'Enter your username:'
  read USER_NAME
  USER_ID=$($PSQL "select user_id from users where user_name = '$USER_NAME'")


  if [[ -z $USER_ID ]] 
  then
    echo "Welcome, $USER_NAME! It looks like this is your first time here."
    INSERT_RESPONSE=$($PSQL "INSERT INTO users (user_name) values('$USER_NAME')")
    USER_ID=$($PSQL "select user_id from users where user_name = '$USER_NAME'")
  else
    ALL_GAMES=$($PSQL "select count(*) from games where user_id = '$USER_ID'")
    BEST_GAME=$($PSQL "select guesses from games where user_id = '$USER_ID' order by guesses ASC limit 1")
    echo "Welcome back, $USER_NAME! You have played $ALL_GAMES games, and your best game took $BEST_GAME guesses."
  fi
  return $USER_ID
}


GUESS(){ #ran_num guesses user_id
  read USER_GUESS
  num='^[0-9]+$'
  if ! [[ $USER_GUESS =~ $num ]] 
  then
    echo "That is not an integer, guess again:"
  elif [[ $USER_GUESS > $1 ]]
  then
    echo "It's lower than that, guess again:"
  elif [[ $USER_GUESS < $1 ]]
    then
    echo "It's higher than that, guess again:"
  else
    FINISH $3 $2 $1
  fi  
}

FINISH(){ # $1 user_ID $2 guesses $3 answer
  echo "You guessed it in $2 tries. The secret number was $3. Nice job!"
  GAME_INSERT_RESPONSE=$($PSQL "INSERT INTO games (user_id, guesses) values($1, $2)")
  exit
}


START_GAME
