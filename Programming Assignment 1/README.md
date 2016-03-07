#R functions programming assignment

2cond  week of Coursera R Programming course

Assignment had 3 parts, based on a given dataset of 332 CSV-files (332 monitors) that contained pollution data

## part 1: 
###function pollutantmean

pollutantmean<- function( directory, pollutant, id= 1:332)

function reads data from the csv files and returns the mean value of a pollutant
of a given monitor

##part2:
###function complete

complete<- function(directory, id= 1:332

function reads again the data and returns a data frame with completely observed 
cases per monitor id

##part 3:
###function corr

corr<- function(directory, threshold= 0)

calculates the correlation between sulfate and nitrate for monitor locations 
where the complete cases are greater than the threshold

[JST]: finished 07th March 2016