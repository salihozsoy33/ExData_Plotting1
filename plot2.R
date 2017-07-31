hdata <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
hsubdata <- hdata[hdata$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(hsubdata$Date, hsubdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width=480, height=480)
plot(datetime, hsubdata$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()

