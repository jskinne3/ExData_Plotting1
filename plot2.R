# Read the data from the csv
names = read.csv("household_power_consumption.txt", sep = ";", nrows=1)
data = read.csv("household_power_consumption.txt",
                sep = ";",
                skip=66636,
                nrows=2880,
                col.names=colnames(names)
)
# Make the plot
plot(data$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)",
     xaxt="n"
)
axis(1, at=c(1,(length(data$Date)/2),length(data$Date)), labels=c("Thu","Fri","Sat"))
