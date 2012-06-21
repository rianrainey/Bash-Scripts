#!/bin/bash

# This script helped me generate dates for project management
# I don't know what uses this would have. I sometimes reference
# it some basic math functions

# Set beginning date
echo "When did this project start (MM/DD/YY)?: "
read begin_date
#utc_date=date +"%D" #$begin_date
utc_date=$(date -ud "$begin_date" +"%D")

# How long is the project
echo "How many weeks is this project?"
read weeks

# Add $weeks to $utc_date
end_date=$(date -ud "$utc_date +$weeks weeks")

for (( w=0; w < $weeks; w++ ))
	do
		date1=$(date -ud "$utc_date +$w weeks" +"%b %e, %Y")
		date2=$(date -ud "$date1 +1 weeks" +"%b %e, %Y")
		echo "Week $((($w+1))) ($date1 to $date2)"  
done
