# This script processes the data given in the Electric Power Consumption dataset 
# and has as its output the dataset ready to be plotted

data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, 
                   as.is = c("Date","Time"), na.strings = "?")

# Subset data to remove dates outside of 1/2/2007
data <- data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]

# Conversion of Date and Time variables to Date and POSIXlt classes:
#
# The concatenation of the Date and Time into the POSIXlt class for the
# time variable is necessary as we want to be able to plot with x axis 
# with days while the actual variable is the time. 
# The assignment was unclear as to time zone, so the default in strptime()
# is used (GMT).

data$Date <- as.Date(data$Date, format="%d/%m/%Y")
data$Time <- strptime(paste(data$Date, data$Time), format="%Y-%m-%d %H:%M:%S")
