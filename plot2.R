#Script to create plot2 for Global Active Power Timeseries.


#Read text file
pathhpc <- "C:/Exploratory_Data_Analysis/ProjectWeek1/household_power_consumption.txt"
hcdata <- read.table(file = path, sep = ";", header = TRUE)

#Subset to select analysis days
dfsubset <- datesubset(path = pathhpc, date1 = "2007-02-01", date2 = "2007-02-03")