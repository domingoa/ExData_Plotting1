# Exploratory Data Analysis Course project 1
# Plot 1
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
hist(df_power$Global_active_power, col = "#FF2500",
                xlab = "Global Active Power (kilowatts)", ylab = "Frequency",
                main= "Global Active Power")
