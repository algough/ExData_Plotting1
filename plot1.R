source("readData.R")

png(filename='plot1.png', width=480, height=480, units='px')

with(data, hist(Global_active_power, col="red", 
                         breaks=15,
                         xlab="Global Active Power (kilowatts)",
                         main="Global Active Power"))

dev.off()

