data=read.table(file = "C:\\Users\\Education\\Desktop\\household_power_consumption.txt",header = T,
                sep=";",na.strings = "?")
fulldata <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
Settime <-strptime(paste(fulldata$Date, fulldata$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
data <- cbind(Settime, fulldata)


##R code for Generate 4th Plot
labels <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
colur <- c("black","red","blue")
par(mfrow=c(2,2))
plot(data$Settime, data$Global_active_power, type="l", col="green", 
     xlab="", ylab="Global Active Power")
plot(data$Settime, data$Voltage, type="l", col="orange", 
     xlab="datetime", ylab="Voltage")
plot(data$Settime, data$Sub_metering_1, type="l", 
     xlab="", ylab="Energy sub metering")
lines(data$Settime, data$Sub_metering_2, type="l", col="red")
lines(data$Settime, data$Sub_metering_3, type="l", col="blue")
legend("topright", bty="n", legend=labels, lty=1, col=colur)
plot(data$Settime, data$Global_reactive_power, type="l", 
     col="blue", xlab="datetime", ylab="Global_reactive_power")

