#Script to create plot3 for Submetering Timeseries.

#Read text file
#NOTE:Edit path as needed for local system
pathhpc <- "C:/Exploratory_Data_Analysis/ProjectWeek1/household_power_consumption.txt"

#Subset to select analysis days
dfsubset <- datesubset(path = pathhpc, date1 = "2007-02-01", date2 = "2007-02-03")

#Create Three Timeseries for plot3
#NOTE: See link below for x-axis formatting scheme
#https://stackoverflow.com/questions/9053437/r-plot-with-an-x-time-axis-how-to-force-the-ticks-labels-to-be-the-days
plot(dfsubset$Time,dfsubset$Sub_metering_1,xaxt="n", type = "l",xlab = "",ylab="Energy sub metering")
lines(dfsubset$Time,dfsubset$Sub_metering_2,col="red")
lines(dfsubset$Time,dfsubset$Sub_metering_3,col="blue")
r <- as.POSIXct(round(range(dfsubset$Time), "days"))
axis.POSIXct(1, at = seq(r[1], r[2], by = "day"), format = "%a")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),col=c("black", "red", "blue"),lty=1)

#Create plot3.png file in current working directory
dev.copy(png,'plot3.png')
dev.off()