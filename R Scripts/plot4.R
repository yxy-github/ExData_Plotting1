# Load data (the variable is "data")
source('~/R/Data Science/getData.R')

# Plot figure plot4.png
# Graphic Device for PNG
png(filename = "plot4.png")

# Set up a 2 x 2 figures
par(mfrow = c(2,2))

# Set the background as NA
par(bg = NA)

# Figure (1,1)
plot(data$DateTime, data$Global_active_power, xlab = "", 
     ylab = "Global Active Power", type = "l")

# Figure (1,2)
plot(data$DateTime, data$Voltage, xlab = "datetime", 
     ylab = "Voltage", type = "l", lwd = 0.25)

# Figure (2,1)
plot(data$DateTime, data$Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "l")
lines(data$DateTime, data$Sub_metering_2, col = "red")
lines(data$DateTime, data$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), bty = "n", lty = 1)

# Figure (2,2)
plot(data$DateTime, data$Global_reactive_power, xlab = "datetime", ylab = "Global_reActive_power", type = "l", lwd = 0.25)


# Turn off the device
dev.off()