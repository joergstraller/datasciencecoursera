# Programming Assignment 1, Part 1
# write a function that calculates the mean of a pollutant
# across a specified number of monitors

pollutantmean <- function(directory, pollutant, id= 1:332) {
        setwd("/Users/joerg/assignment1")
        setwd(directory)

        poldata<- c()
        for (i in seq_along(id)) {
                # set filename with C style formatting commands
                filename = sprintf("%03d.csv", id[i])
                # read data from file(s) 
                dataread <- read.csv(filename, header=TRUE)
                #extract coloumn of interest without header
                col = dataread[ ,pollutant]
                # concatenate data and write into a vector for calcs
                poldata<-  c(poldata, col)
              
        }

        #  throw away NAs and calculate mean for column pollutant
        out = mean(poldata, na.rm = TRUE)
        print(out)
        
}