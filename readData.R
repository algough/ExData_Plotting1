# This script processes the data given in the Electric Power Consumption dataset 
# and has as its output the dataset ready to be plotted

data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE,
                   na.strings = "?")

# Converts Date and Time variables to Date and POSIXlt classes respectively
data <- data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]
data$Time <- strptime(paste(data$Date, data$Time), format="%Y-%m-%d %H:%M:%S")

