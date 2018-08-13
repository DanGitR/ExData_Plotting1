#Script to create plot4 with four power data plot facets.

#Read text file
#NOTE:Edit path as needed for local system
pathhpc <- "C:/Exploratory_Data_Analysis/ProjectWeek1/household_power_consumption.txt"

#Subset to select analysis days
dfsubset <- datesubset(path = pathhpc, date1 = "2007-02-01", date2 = "2007-02-03")

#Create facet contents for plot4


#Create plot4.png file in current working directory
dev.copy(png,'plot4.png')
dev.off()