data <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?")
sub_data <- subset(data, data$Date == '1/2/2007' | data$Date == '2/2/2007')

png("plot3.png", width=480, height=480)
plot(as.POSIXct(datetime), sub_data$Sub_metering_1, type = 'l', ylab = "Energy sub metering", xlab = "")
lines(as.POSIXct(datetime),sub_data$Sub_metering_2, col = "red")
lines(as.POSIXct(datetime), sub_data$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, col = c("black","red","blue"))
dev.off()
