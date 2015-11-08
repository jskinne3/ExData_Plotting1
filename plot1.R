# This is a test
data = read.csv("ExpDataAnAssign1/dataFeb1-2.txt")
hist(data$Global_active_power,
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     col="red"
     )