# Programming Assignment 1, Part 3
# write a function that reads directory full of files and 
# reports the number of complete cases for every file

corr <- function(directory, threshold = 0) {
        setwd("/Users/joerg/assignment1")
        setwd(directory)
 
        id<- c(1:332)

        # initialise empty  output vector
        vec_out<- c()
        # now get data from the files
        for (i in seq_along(id)) {
                # set filename with C style formatting commands
                filename = sprintf("%03d.csv", i)
                # read data from file(s) 
                dataread <- read.csv(filename, header=TRUE)
                # check if complete cases is above threshold
                if (sum(complete.cases(dataread)) > threshold) {
                        # result vector per monitor, corelate sulfate and nitrate, only use complete observations
                        cor_res<- cor(x=dataread$sulfate, y=dataread$nitrate, use="complete.obs")
                        #append to output vector
                        vec_out<- c(vec_out, cor_res)
                        
                }

        }
# write output vector
vec_out
}