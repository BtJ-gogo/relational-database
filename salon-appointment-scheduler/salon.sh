#!/bin/bash

# PSQLコマンドの定義
PSQL="psql -X -U freecodecamp -d salon --tuples-only -c"

#echo -e "\n~~~~~ MY SALON ~~~~~"
#echo -e "\nWelcome to My Salon, how can I help you?\n"

MAIN_MENU() {
  if [[ $1 ]]
  then
    echo -e "\n$1"
  fi

  # サービスメニューの取得
  SERVICE_MENU=$($PSQL "SELECT * FROM services ORDER BY service_id")

  # 取得したサービスメニューの表示
  echo "$SERVICE_MENU" | while read SERVICE_ID BAR NAME
  do
    if [[ $SERVICE_ID =~ ^[0-9]+$ ]]
    then
      echo "$SERVICE_ID) $NAME"
    fi
  done

read SERVICE_ID_SELECTED
#サービス選択の分岐
#case $SERVICE_ID_SELECTED in
#  1) APPOINTMENT ;;
#  2) APPOINTMENT ;;
#  3) APPOINTMENT ;;
#  4) APPOINTMENT ;;
#  5) APPOINTMENT ;;
#  *) MAIN_MENU "I could not find that service. What would you like today?" ;;
#esac
# if not exit service id
if [[ $SERVICE_ID_SELECTED > 5 ]]
then
  MAIN_MENU "I could not find that service. What would you like today?"
# if exit service id
else
  # get service name
  SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id = '$SERVICE_ID_SELECTED'")
  #remove space
  SERVICE_NAME=$(echo $SERVICE_NAME | sed -r 's/^ *| *$//g')

  # get customer info
  echo -e "\nWhat's your phone number?"
  read CUSTOMER_PHONE
  CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone = '$CUSTOMER_PHONE'")
 
  # if not exit
  if [[ -z $CUSTOMER_NAME ]]
  then
    # ask for customer name
    echo -e "\nI don't have a record for that phone number, what's your name?"
    read CUSTOMER_NAME
    INSERT_CUSTOMER_INFO=$($PSQL "INSERT INTO customers (phone, name) VALUES ('$CUSTOMER_PHONE', '$CUSTOMER_NAME')")
  fi
 
  # ask for time
  echo -e "\nWhat time would you like your $SERVICE_NAME, $CUSTOMER_NAME?"
  read SERVICE_TIME

  # get customer id
  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE'")

  # insert appointment info
  INSERT_APPOINTMENT=$($PSQL "INSERT INTO appointments (customer_id, service_id, time) VALUES ($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")
  echo -e "\nI have put you down for a $SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."
fi
}

MAIN_MENU