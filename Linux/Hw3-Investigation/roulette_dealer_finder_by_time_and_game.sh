#!/bin/bash

#Argument 1 - The time, including AM/PM ("08:00:00 AM")
#Argument 2 - The four-digit date (0310)
#Argument 3 - The casino game being played (Blackjack, Roulette, TexasHoldEM)

case $3 in

Blackjack)
  dealer=$(grep "$1" "$2_Dealer_schedule" | awk -F" " '{print $3, $4}')
  ;;

Roulette)
  dealer=$(grep "$1" "$2_Dealer_schedule" | awk -F" " '{print $5, $6}')
  ;;

TexasHoldEM)
  dealer=$(grep "$1" "$2_Dealer_schedule" | awk -F" " '{print $7, $8}')
  ;;

*)
  dealer=""
  ;;

esac

echo -e "Date: $1\nTime: $2\nBlackjack Dealer: $dealer"

