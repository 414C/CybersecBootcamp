#!/bin/bash

#Argument 1 - The four-digit date (0310)
#Argument 2 - The time, including AM/PM ("08:00:00 AM")

dealer=$(grep "$2" "$1_Dealer_schedule" | awk -F" " '{print $5, $6}')

echo -e "Date: $1\nTime: $2\nBlackjack Dealer: $dealer"
