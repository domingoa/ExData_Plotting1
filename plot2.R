# Exploratory Data Analysis Course project 1
# Plot 2
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
plot(Datatime, df_power$Global_active_power, type = "l", xlab ="",
                        ylab = "Global Active Power (kilowatts)")