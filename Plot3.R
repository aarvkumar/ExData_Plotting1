data=read.table(file = "C:\\Users\\Education\\Desktop\\household_power_consumption.txt",header = T,
                sep=";",na.strings = "?")
fulldata <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
Settime <-strptime(paste(fulldata$Date, fulldata$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
data <- cbind(Settime, fulldata)


##R code for Generate 3rd Plot
colur <- c("black", "red", "blue")
labels <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
plot(data$Settime, data$Sub_metering_1, type="l", col=colur[1], xlab="",
     ylab="Energy sub metering")
lines(data$Settime, data$Sub_metering_2, col=colur[2])
lines(data$Settime, data$Sub_metering_3, col=colur[3])
legend("topright", legend=labels, col=colur, lty="solid")