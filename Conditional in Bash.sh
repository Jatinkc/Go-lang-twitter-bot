#Variables defined

ChallengeName=#90DaysOfDevOps
TotalDays=90

#User Input

echo "Enter your name: "
read name

echo "Welcome $name to $ChallengeName !!"

echo "How many days of the $ChallengeName challenge have you completed?"
read DaysDone

if [ $DaysDone -eq 90 ]
then
     echo "You have Finished this challenge. Congratulations!!"
elif [ $DaysDone -lt 90 ]
then
     echo "Keep going on. you are doing great!!"
else
     echo "You have entered the wrong number of Days! Try Again"

fi
