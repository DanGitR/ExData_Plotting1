#Script to create plot4 with four power data plot facets.

#Create plot array contents for plot4
par(mfcol=c(2,2),pty ="m")

#Add Contents from plot2.R script
pathhpc <- "C:/Exploratory_Data_Analysis/ProjectWeek1/household_power_consumption.txt"
dfsubset <- datesubset(path = pathhpc, date1 = "2007-02-01", date2 = "2007-02-03")
plot(dfsubset$Time,dfsubset$Global_active_power,xaxt="n", type = "l",xlab = "",ylab="Global Active Power")
r <- as.POSIXct(round(range(dfsubset$Time), "days"))
axis.POSIXct(1, at = seq(r[1], r[2], by = "day"), format = "%a")

#Add Contents from plot3.R script
plot(dfsubset$Time,dfsubset$Sub_metering_1,xaxt="n", type = "l",xlab = "",ylab="Energy sub metering")
lines(dfsubset$Time,dfsubset$Sub_metering_2,col="red")
lines(dfsubset$Time,dfsubset$Sub_metering_3,col="blue")
axis.POSIXct(1, at = seq(r[1], r[2], by = "day"), format = "%a")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),col=c("black", "red", "blue"),lty=1,cex = 0.5)

#Add Voltage Timeseries plot
plot(dfsubset$Time,dfsubset$Voltage,xaxt="n", type = "l",xlab = "datetime",ylab="Voltage")
axis.POSIXct(1, at = seq(r[1], r[2], by = "day"), format = "%a")

#Add Global_reactive_power Timeseries plot
plot(dfsubset$Time,dfsubset$Global_reactive_power,xaxt="n", type = "l",xlab = "datetime",ylab="Global_reactive_power")
axis.POSIXct(1, at = seq(r[1], r[2], by = "day"), format = "%a")

#Create plot4.png file in current working directory
#dev.copy(png,'plot4.png')
png(filename = "plot4.png",width = 480, height = 480, units = "px")
dev.off()