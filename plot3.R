#plot3
mydata<-read.table("household_power_consumption.txt", sep = ";", nrows = 24*60*2, skip = 24*60*46 + 396, header = TRUE)
names(mydata)<-c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
mydata$DateTime<-strptime(paste(mydata$Date, mydata$Time),format = "%d/%m/%Y %H:%M:%S")
png(file="plot3.png", width = 480, height=480)
par(mfrow=c(1,1))
with(mydata,{
        plot(mydata$DateTime, mydata$Sub_metering_1, type = "l", xlab="", ylab="Energy sub metering")
lines(mydata$DateTime, mydata$Sub_metering_2, type = "l", col = "red")
lines(mydata$DateTime, mydata$Sub_metering_3, type = "l", col = "blue")
legend("topright", 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"),
       lty=1,
       y.intersp=.80,
       cex=.75)})
##dev.copy(png, file = "plot3.png", width = 480, height=480) 
dev.off()
