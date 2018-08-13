#Script to create plot2 for Global Active Power Timeseries.

#Read text file
#NOTE:Edit path as needed for local system
pathhpc <- "C:/Exploratory_Data_Analysis/ProjectWeek1/household_power_consumption.txt"

#Subset to select analysis days
dfsubset <- datesubset(path = pathhpc, date1 = "2007-02-01", date2 = "2007-02-03")

#Create Timeseries for plot2 
#NOTE: See link below for x-axis formatting scheme
#https://stackoverflow.com/questions/9053437/r-plot-with-an-x-time-axis-how-to-force-the-ticks-labels-to-be-the-days
plot(dfsubset$Time,dfsubset$Global_active_power,xaxt="n", type = "l",xlab = "",ylab="Global Active Power (kilowatts)")
r <- as.POSIXct(round(range(dfsubset$Time), "days"))
axis.POSIXct(1, at = seq(r[1], r[2], by = "day"), format = "%a")

#Create plot2.png file in current working directory
png(filename = "plot2.png",width = 480, height = 480, units = "px")
dev.off()