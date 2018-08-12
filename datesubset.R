#Read and subset the data file for date interval

#USAGE EXAMPLE: dfsubset <- datesubset(path = "./household_power_consumption.txt", date1 = "2007-02-01", date2 = "2007-02-03")

datesubset <- function(path = "",date1 = "", date2 = ""){
        library(dplyr)
        datesubset<-read.table(file = path, sep = ";", header = TRUE)
        datesubset<-na_if(datesubset,"?")
        datesubset$Date <- as.Date(datesubset$Date,"%d/%m/%Y")
        datesubset <- filter(datesubset, Date >= date1 & Date < date2)
}    