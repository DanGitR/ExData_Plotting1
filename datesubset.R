#Read and subset the data file for date interval

#USAGE EXAMPLE: dfsubset <- datesubset(path = "./household_power_consumption.txt", date1 = "2007-02-01", date2 = "2007-02-03")

datesubset <- function(path = "",date1 = "", date2 = ""){
        #Load libraries
        library(dplyr)
        
        #Read data frame
        datesubset<-read.table(file = path, sep = ";", header = TRUE)
        
        #replace "?" missing values as NA.
        datesubset<-na_if(datesubset,"?")
        
        #Convert "Time" to a timestamp at GMT time zone.
        datesubset$Time <- as.POSIXct(strptime(paste(as.character(foodatesubset$Date), as.character(foodatesubset$Time)),format = "%d/%m/%Y %H:%M:%OS",tz ="GMT"))
        
        #Convert "Date" from a "%d/%m/%Y" factor string format to a class Date column.
        datesubset$Date <- as.Date(datesubset$Date,"%d/%m/%Y")
        
        #COnvert "Time"from a "%d/%m/%Y" factor string format
        
        #Filter data frame to extract date interval of interest.
        datesubset <- filter(datesubset, Date >= date1 & Date < date2)
        
        #Data column conversions from factor, to character, to numeric
        datesubset$Global_active_power<-as.numeric(as.character(datesubset$Global_active_power))
        datesubset$Global_reactive_power<-as.numeric(as.character(datesubset$Global_reactive_power))
        datesubset$Voltage<-as.numeric(as.character(datesubset$Voltage))
        datesubset$Global_intensity<-as.numeric(as.character(datesubset$Global_intensity))
        datesubset$Sub_metering_1<-as.numeric(as.character(datesubset$Sub_metering_1))
        datesubset$Sub_metering_2<-as.numeric(as.character(datesubset$Sub_metering_2))
        #NOTE:Sub_metering_3 is already of class numeric.
        
        datesubset
}    