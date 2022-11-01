## In this demo Your going to be working with the protests Data and answering 
## Questions asked about the dataset. This demo focues on Dpylr



##=--------Part 1 set up
##Question 1: Before you begin first load the tidyverse library for know as a first step.




##Question 2: Next load the dataset from Assignment 1 from https://countlove.org/data/data.csv
# into a variable called `protests`




##----- Part 2 Answering questions

##Question 3: which Location had the most Attendes by the most recent date. 
#Rember to filter out na Values `most_attendes`



##Question 4: What was the total number of attendes that attended the 
## protests located in Milwaukee, WI. For 
## The Date 10/15/2019. Rember to filter out na Values `get_attendes_data`





## Question 5: What was the most number of Attendes 
# for the location Washington DC `protest_DC` rember to filter for NA VAlues





##Question 6:
## What was the maxiumn number of attendes ever recored for 2017. 
## Remeber 2017 is the lowest date 
## and 2021 is the maxiumn most recent date. Store this in a varible in_2017_protests
## Rember to filter out na Values






## Question 7:

## Which  protests TAG that had the most attendes.  `protest_detail`




## Question 8:
## What day had the most number of Attendes `most_days`


  



## Question 9:
## Create a function print_date_Attendes that prints the sentence



## **The date that had the most number of attendes was on XXX, 
## Where XXX is the actual date variable most_days, In the format**

## Month Day, Year so for example 2002-09-17 would be September 17, 2002

## You can call the Format Date function below passing in the date string
## to format. To do this for you. But make sure the string is in this 

## format YEAR-DAY-MONTH to format it.




## This function takes in a DATe as paramter in the form YEAR-MONTH-DAY
## And formats it in the form MONTH DAY, YEAR so if the function took in 
## 2013-04-24 it would return April 24, 2013

Format_Date <- function(DATE_FORMAT) {
  MONTH <- c("January", "Febuary", "March", "April", "May", "June", "July", "August", "
             Septemeber", "October", "November", "December")
  for(i in 1:length(DATE_FORMAT)) {
    results <- "";
    grab_year <- substring(DATE_FORMAT, 1, 4)
    grab_month <- substring(DATE_FORMAT, i + 5, i + 6)
    grab_day <- substring(DATE_FORMAT, i + 8, i + 9)
    Get_Month <- MONTH[as.integer(grab_month)]
    results <- paste(Get_Month, paste0(grab_day, ","), grab_year)
    return(str_trim(results))
  }
}



## Question 10:
## Challenge bonus: Write a function protest_tag,  which takes in  a Tags(The type of protests) as a parameter. 
## And finds out how much Attendes attended that protests in total. When your function 
## Is called it should return the phrase "There were N attendees for the protests T"
## Where N is the total number of attendes calculated and  T is the Tag the parameter passed in. 
## make sure to drop any grouping using the .groups = "drop" property,
# Call the function
## format string to format the string, Pass in the tags count and 
## the tag itself. You can the format_String function below 
## to print out the string, Passing in count of Attendes for the TAG 
## as the count and TAGS paramter itself for Desc parameters.


## Challenge bonus continued: Call your function above and pass it the 
## Tag "Civil Rights; For racial justice; Against punishment" to find out how  much Attendes 
## attended this protest. `protest_information` 


format_String <- function (Count, Desc){
  return(paste("There were", Count, "Attendes for the protests", Desc))
}


