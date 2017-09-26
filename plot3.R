#allpower <- read.table(unz("exdata%2Fdata%2Fhousehold_power_consumption.zip", "household_power_consumption.txt"), header=TRUE, sep=";", na.strings="?")
#allpower$datetime <- strptime(paste(allpower$Date, allpower$Time), "%d/%m/%Y %H:%M:%S")
#minDate <- as.POSIXct("2007-02-01")
#maxDate <- as.POSIXct("2007-02-03")
#somepower <- subset(allpower, datetime>=minDate & datetime<maxDate)

#plot3
png(filename="plot3.png")
with(somepower,plot(datetime, Sub_metering_1, xlab="", ylab="Energy sub metering", type="n"))
with(somepower, lines(datetime, Sub_metering_1))
with(somepower, lines(datetime, Sub_metering_2, col="red"))
with(somepower, lines(datetime, Sub_metering_3, col="blue"))
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black","red","blue"), lwd=c(1,1,1))
dev.off()
