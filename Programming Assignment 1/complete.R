# Programming Assignment 1, Part 2
# write a function that reads directory full of files and 
# reports the number of complete cases for every file

complete <- function(directory, id= 1:332) {
        setwd("/Users/joerg/assignment1")
        setwd(directory)
        
        # initialise Matrix, 0 rows, 2 columns
        frame<- matrix(nrow=0, ncol=2)
        # now get data from the files
        for (i in seq_along(id)) {
                # set filename with C style formatting commands
                filename = sprintf("%03d.csv", id[i])
                # read data from file(s) 
                dataread <- read.csv(filename, header=TRUE)
                # get number of complete cases and write to vector
                ok<-  complete.cases(dataread)
                # sum up true values as numeric and build a vector of ID and count
                count<- sum(as.numeric(ok))
                case<- c(id[i], count)
                # write result vector to matrix and build a data frame from it
                frame <- rbind(frame, case)
                out<- data.frame(frame, row.names = NULL)
        }
        # set the column names of the data frame
        cnames<- c("id", "nobs")
        colnames(out)<- cnames
        
        print(out)

}