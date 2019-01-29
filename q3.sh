#!/bin/sh
name=""
ans1=""
ans2=""
ans3=""
ans4=""
ans5=""

status=false
while [ "$status" != "true" ] do 
printf "Please enter your name:" read studentname if [ "$studentname" = "" ] then status=false else status=true 
name=$studentname fi done 

score=0
printf "Question 1:" 
status=false while [ "$status" != "true" ] do 
printf "1. True or false? Electrons are larger than molecules." printf "(A) False" printf "(B) True" read answer if [ "$answer" = "A" ] || [ "$answer" = "a" ] then status=true 
score=`expr $score + 1`
ans1=$answer elif [ "$answer" = "B" ] || [ "$answer" = "b" ] then status=true ans1=$answer else printf "Please try again" 
ans1=$answer 
status=false fi done 

printf "Question 2" 
status=false while [ "$status" != "true" ] do 
printf "True or false? The Atlantic Ocean is the biggest ocean on Earth." printf "(A) False" printf "(B) True"
read answer if [ "$answer" = "A" ] || [ "$answer" = "a" ] then status=true ans2=$answer elif [ "$answer" = "B" ] || [ "$answer" = "b" ] then status=true 
score=`expr $score + 1` 
ans2=$answer else printf "Please try again" 
status=false 
ans2=$answer fi done 

printf "Question 3"
status=false while [ "$status" != "true" ] do 
printf "3. True or false? Sharks are mammals." printf "(A) True" printf "(B) Fail" read answer if [ "$answer" = "A" ] || [ "$answer" = "a" ] then status=true 
score=`expr $score + 1` 
ans3=$answer elif [ "$answer" = "B" ] || [ "$answer" = "b" ] then status=true 
ans3=$answer else printf "Please try again" 
status=false 
ans3=$answer fi done 

printf "Question 4" 
status=false while [ "$status" != "true" ] do
 printf "4. True or false? Venus is the closest planet to the Sun." printf "(A) True" printf "(B) False" read answer if [ "$answer" = "A" ] || [ "$answer" = "a" ] then status=true 
ans4=$answer elif [ "$answer" = "B" ] || [ "$answer" = "b" ] then status=true 
score=`expr $score + 1` 
ans4=$answer else printf "Please try again" 
status=false 
ans4=$answer fi done 

printf "Question 5" status=false while [ "$status" != "true" ] do 
printf "True or false? Spiders have six legs." printf "(A) A True" printf "(B) False" read answer if [ "$answer" = "A" ] || [ "$answer" = "a" ] then status=true 
ans5=$answer elif [ "$answer" = "B" ] || [ "$answer" = "b" ] then status=true 
score=`expr $score + 1` 
ans5=$answer else echo "Please try again"
status=false 
ans5=$answer fi done
nameoffile="Record.$name.$(date +%Y-%m-%d-%H:%M-%p).txt"
touch $nameoffile
printf "Results\n\n" >> $nameoffile
printf "Correct Answer 1 = A\n" >> $nameoffile
printf "Your Choice = $ans1\n\n" >> $nameoffile
printf "Correct Answer 2 = B\n" >> $nameoffile
printf "Your Choice = $ans2\n\n" >> $nameoffile
printf "Correct Answer 3 = A\n" >> $nameoffile
printf "Your Choice = $ans3\n\n" >> $nameoffile
printf "Correct Answer 4 = A\n" >> $nameoffile
printf "Your Choice = $ans4\n\n" >> $nameoffile
printf "Correct Answer 5 = A\n" >> $nameoffile
printf "Your Choice = $ans5\n\n" >> $nameoffile
printf "Your total score = $score/100\n" >> $nameoffile
