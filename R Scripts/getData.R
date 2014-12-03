if (!file.exists("power.rds")) {
     # Download and unzip file
     if (!file.exists('household_power_consumption.txt')) {
          fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
          download.file(fileURL, "power.zip")
          unzip("power.zip")
     }
     
     # Read data from the text file
     power <- read.table("household_power_consumption.txt", 
                         header = TRUE, sep = ";", na.strings = "?",
                         colClasses = c(rep("character", 2), rep("numeric", 7)))
     
     # Extract data from 1/2/2007 to 2/2/2007
     data <- subset(power, power$Date == "1/2/2007" | power$Date == "2/2/2007")
     
     # Add a new variable that combines Date and Time to the data
     combine <- paste(data$Date, data$Time)
     DateTime <- strptime(combine, "%d/%m/%Y %H:%M:%S")
     data$DateTime <- DateTime
     
     # Save the data
     saveRDS(data, file = "power.rds")
} else {
     # Read the data
     data <- readRDS("power.rds")
}