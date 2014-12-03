# Load data (the variable is "data")
source('~/R/Data Science/getData.R')

# Plot figure plot1.png
# Graphic Device for PNG
png(filename = "plot1.png")

# Set the background as NA
par(bg = NA)

# Plot a histogram with red bars
hist(data$Global_active_power, main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", col = "red")

# Turn off the device
dev.off()