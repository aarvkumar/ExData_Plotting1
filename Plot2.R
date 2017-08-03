data=read.table(file = "C:\\Users\\Education\\Desktop\\household_power_consumption.txt",header = T,
                sep=";",na.strings = "?")
fulldata <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
Settime <-strptime(paste(fulldata$Date, fulldata$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
data <- cbind(Settime, fulldata)


##R code for Generate 2nd Plot
plot(data$Settime, data$Global_active_power, type="l", col="black", xlab="", 
     ylab="Global Active Power (kilowatts)")