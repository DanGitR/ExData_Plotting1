
#Script to create plot1 for Global Active Power Histogram.

#Read text file
#NOTE:Edit path as needed for local system
pathhpc <- "C:/Exploratory_Data_Analysis/ProjectWeek1/household_power_consumption.txt"

#Subset to select analysis days
dfsubset <- datesubset(path = pathhpc, date1 = "2007-02-01", date2 = "2007-02-03")

#Create Histogram for plot1
hist(dfsubset$Global_active_power,col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")

#Create plot1.png file in current working directory
dev.copy(png,'plot1.png')
dev.off()