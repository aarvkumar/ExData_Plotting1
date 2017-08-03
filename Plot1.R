data=read.table(file = "C:\\Users\\Education\\Desktop\\household_power_consumption.txt",header = T,
                sep=";",na.strings = "?")
fulldata <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
Settime <-strptime(paste(fulldata$Date, fulldata$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
data <- cbind(Settime, fulldata)

##R code for Generate 1st Plot
hist(data$Global_active_power, col="red", main="Global Active Power", 
     xlab="Global Active Power (kilowatts)")