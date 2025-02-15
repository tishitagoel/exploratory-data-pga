plot1<- function(){
        power_data$Date <- as.Date(power_data$Date, format="%d/%m/%Y")
        power_data$Time <- format(power_data$Time, format="%H:%M:%S")
        power_data$Global_active_power <- as.numeric(power_data$Global_active_power)
        power_data$Global_reactive_power <- as.numeric(power_data$Global_reactive_power)
        power_data$Voltage <- as.numeric(powerdata$Voltage)
        power_data$Global_intensity <- as.numeric(power_data$Global_intensity)
        power_data$Sub_metering_1 <- as.numeric(power_data$Sub_metering_1)
        power_data$Sub_metering_2 <- as.numeric(power_data$Sub_metering_2)
        power_data$Sub_metering_3 <- as.numeric(power_data$Sub_metering_3)
        
        
        subsetdata <- subset(power_data, Date == "2007-02-01" | Date =="2007-02-02")
        
        png("plot1.png", width=480, height=480)
        hist(subsetdata$Global_active_power, col="red", border="black", main ="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")
        dev.off()
}
