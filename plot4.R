source("readData.R")

png(filename = "plot4.png", width=480, height=480, units='px')

par(mfcol=c(2,2))

# Top-left

with(data, plot(Time, Global_active_power, 
                type="l",
                xlab="",
                ylab="Global Active Power"))

# Bottom-left

plot(data$Time, data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")

lines(data$Time, data$Sub_metering_2, col="red")

lines(data$Time, data$Sub_metering_3, col="blue")

legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=c(1,1,1), col=c("black","red", "blue"))

# Top-right

with(data, plot(data$Time, data$Voltage, 
                         type="l",
                         xlab="datetime", ylab="Voltage"))

# Bottom-right

with(data, plot(data$Time, data$Global_reactive_power, 
                type="l", lwd = 0.5,
                xlab="datetime", ylab="Global_reactive_power"))

dev.off()