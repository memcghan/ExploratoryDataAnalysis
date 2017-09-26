#allpower <- read.table(unz("exdata%2Fdata%2Fhousehold_power_consumption.zip", "household_power_consumption.txt"), header=TRUE, sep=";", na.strings="?")
#allpower$datetime <- strptime(paste(allpower$Date, allpower$Time), "%d/%m/%Y %H:%M:%S")
#minDate <- as.POSIXct("2007-02-01")
#maxDate <- as.POSIXct("2007-02-03")
#somepower <- subset(allpower, datetime>=minDate & datetime<maxDate)

#plot4
png(filename="plot4.png")
par(mfcol=c(2,2))
with(somepower,plot(datetime, Global_active_power, xlab="", ylab="Global Active Power", type="n"))
with(somepower, lines(datetime, Global_active_power))

with(somepower,plot(datetime, Sub_metering_1, xlab="", ylab="Energy sub metering", type="n"))
with(somepower, lines(datetime, Sub_metering_1))
with(somepower, lines(datetime, Sub_metering_2, col="red"))
with(somepower, lines(datetime, Sub_metering_3, col="blue"))
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black","red","blue"), lwd=c(1,1,1),bty="n")

with(somepower, plot(datetime, Voltage, ylab="Voltage", type="n"))
with(somepower, lines(datetime, Voltage))

with(somepower, plot(datetime, Global_reactive_power, type="n"))
with(somepower, lines(datetime, Global_reactive_power))
dev.off()