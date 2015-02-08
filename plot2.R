##plot2

mydata<-read.table("household_power_consumption.txt", sep = ";", nrows = 24*60*2, skip = 24*60*46 + 396, header = TRUE)
names(mydata)<-c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
mydata$DateTime<-strptime(paste(mydata$Date, mydata$Time),format = "%d/%m/%Y %H:%M:%S")
plot(mydata$DateTime, mydata$Global_active_power, type = "l", xlab="", ylab ="Global Active Power (Kilowatts)")
dev.copy(png, file = "plot2.png") 
dev.off()
