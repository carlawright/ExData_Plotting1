#plot1
mydata<-read.table("household_power_consumption.txt", sep = ";", nrows = 24*60*2, skip = 24*60*46 + 396, header = TRUE)
names(mydata)<-c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
hist(mydata$Global_active_power,xlab = "Global Active Power (Kilowatts)", col= "Red", main = "Global Active Power")
dev.copy(png, file = "plot1.png") 
dev.off()