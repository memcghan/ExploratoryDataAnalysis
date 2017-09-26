#allpower <- read.table(unz("exdata%2Fdata%2Fhousehold_power_consumption.zip", "household_power_consumption.txt"), header=TRUE, sep=";", na.strings="?")
#allpower$datetime <- strptime(paste(allpower$Date, allpower$Time), "%d/%m/%Y %H:%M:%S")
#minDate <- as.POSIXct("2007-02-01")
#maxDate <- as.POSIXct("2007-02-03")
#somepower <- subset(allpower, datetime>=minDate & datetime<maxDate)

#plot2
with(somepower,plot(datetime, Global_active_power, xlab="", ylab="Global Active Power (kilowatts)", type="n"))
with(somepower, lines(datetime, Global_active_power))
dev.copy(png,filename="plot2.png")
dev.off()
