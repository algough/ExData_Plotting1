source("readData.R")

png(filename='plot2.png', width=480, height=480, units='px')

with(data, plot(Time, Global_active_power, 
                         type="l",
                         xlab="",
                         ylab="Global Active Power (in kilowatts)"))

dev.off()