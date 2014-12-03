# Load data (the variable is "data")
source('~/R/Data Science/getData.R')

# Plot figure plot3.png
# Graphic Device for PNG
png(filename = "plot3.png")

# Set the background as NA
par(bg = NA)

# Plot the three sub-metering time series
plot(data$DateTime, data$Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "l")
lines(data$DateTime, data$Sub_metering_2, col = "red")
lines(data$DateTime, data$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), lty = 1)

# Turn off the device
dev.off()