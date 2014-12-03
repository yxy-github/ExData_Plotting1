# Load data (the variable is "data")
source('~/R/Data Science/getData.R')

# Plot figure plot2.png
# Graphic Device for PNG
png(filename = "plot2.png")

# Set the background as NA
par(bg = NA)

# Plot the time series
plot(data$DateTime, data$Global_active_power, xlab = "", 
     ylab = "Global Active Power (kilowatts)", type = "l")

# Turn off the device
dev.off()