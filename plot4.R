df_names <- read.table(file = "household_power_consumption.txt",
                       sep = ";",
                       header = TRUE,
                       nrows = 1)
df_power <- read.table(file = "household_power_consumption.txt",
                       na.strings = "?",
                       sep = ";", 
                       col.names = colnames(df_names),
                       skip = 66637,
                       nrows = 2880)
# 
Datatime <- strptime(paste(df_power$Date, df_power$Time),"%d/%m/%Y %H:%M:%S")
par(mfrow = c(2, 2), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))

plot(Datatime, df_power$Global_active_power, type = "l", xlab ="",
     ylab = "Global Active Power (kilowatts)")
plot(Datatime, df_power$Voltage, type = "l",  ylab = "Voltage")        
plot(Datatime, df_power$Sub_metering_1, type ="l", xlab ="",
                       ylab = "Energy sub metering")
        lines(Datatime, df_power$Sub_metering_1,col="black")
        lines(Datatime, df_power$Sub_metering_2,col="red")
        lines(Datatime, df_power$Sub_metering_3,col="blue")
        legend("topright", lty = c(1,1), lwd=c(0.5,0.5), 
                         col = c("black", "red", "blue"), 
                         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
plot(Datatime, df_power$Global_reactive_power, type = "l",  ylab = "Global_reactive_power")                       