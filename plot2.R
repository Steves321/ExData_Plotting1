data <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?")
sub_data <- subset(data, data$Date == '1/2/2007' | data$Date == '2/2/2007')

png("plot2.png", width=480, height=480)
sub_data$Date <- as.Date(sub_data$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(sub_data$Date), sub_data$Time)
plot(as.POSIXct(datetime), as.numeric(sub_data$Global_active_power),type = 'l', ylab = "Global Active Power (kilowatts)",xlab = "")
dev.off()
