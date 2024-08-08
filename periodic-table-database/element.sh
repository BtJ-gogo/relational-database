#!/bin/bash

if [[ -z $1 ]]
then
  echo Please provide an element as an argument.
else
  PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"
  # if arg is atomic_number
  if [[ $1 =~ ^[0-9]+$ ]]
  then
    GET_INFO_RESULT=$($PSQL "SELECT * FROM properties LEFT JOIN elements USING(atomic_number) LEFT JOIN types USING(type_id) WHERE atomic_number = $1;")
  # if arg is symbol
  elif [[ $1 =~ ^([a-z]|[A-Z]){1,2}$ ]]
  then
    GET_INFO_RESULT=$($PSQL "SELECT * FROM properties FULL JOIN elements USING(atomic_number) LEFT JOIN types USING(type_id) WHERE symbol = '$1';")
  # if arg is name
  elif [[ $1 =~ ^([a-z]|[A-Z])+$ ]]
  then
    GET_INFO_RESULT=$($PSQL "SELECT * FROM properties FULL JOIN elements USING(atomic_number) LEFT JOIN types USING(type_id) WHERE name = '$1';")
  fi
  
  # if result is empty
  if [[ -z $GET_INFO_RESULT ]]
  then
    echo I could not find that element in the database.
  # if result is not empty
  else
    IFS="|" read -r TYPE_ID ATOM_NUM ATOM_MASS MELT_POINT BOIL_POINT SYMBOL NAME TYPE<<< "$GET_INFO_RESULT"
    echo "The element with atomic number $ATOM_NUM is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOM_MASS amu. $NAME has a melting point of $MELT_POINT celsius and a boiling point of $BOIL_POINT celsius."
  fi
fi