allpower <- read.table(unz("exdata%2Fdata%2Fhousehold_power_consumption.zip", "household_power_consumption.txt"), header=TRUE, sep=";", na.strings="?")
allpower$datetime <- strptime(paste(allpower$Date, allpower$Time), "%d/%m/%Y %H:%M:%S")
minDate <- as.POSIXct("2007-02-01")
maxDate <- as.POSIXct("2007-02-03")
somepower <- subset(allpower, datetime>=minDate & datetime<maxDate)

#plot1
with(somepower, hist(Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)"))
dev.copy(png,filename="plot1.png")
dev.off()
