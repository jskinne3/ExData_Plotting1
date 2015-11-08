# Set up .png
png("plot4.png",
    width=480,
    height=480,
    units="px",
    res=72,
    pointsize=12
)
# Read the data from the csv
names = read.csv("household_power_consumption.txt", sep = ";", nrows=1)
data = read.csv("household_power_consumption.txt",
    sep = ";",
    skip=66636,
    nrows=2880,
    col.names=colnames(names)
)
# Set up grid of 4 plots
par(mfrow=c(2,2))
# top left
plot(data$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power",
     xaxt="n"
)
axis(1, at=c(1,(length(data$Date)/2),length(data$Date)), labels=c("Thu","Fri","Sat"))
# top right
plot(data$Voltage,
     type="l",
     xlab="datetime",
     ylab="Voltage",
     xaxt="n"
)
axis(1, at=c(1,(length(data$Date)/2),length(data$Date)), labels=c("Thu","Fri","Sat"))
# bottom left
plot(data$Sub_metering_1,
    type="l",
    xlab="",
    ylab="Energy sub metering",
    xaxt="n"
)
points(data$Sub_metering_2, col="red", type="l")
points(data$Sub_metering_3, col="blue", type="l")
axis(1, at=c(1,(length(data$Date)/2),length(data$Date)), labels=c("Thu","Fri","Sat"))
legend("topright",
    lty=c(1,1),
    bty="n",
    col=c("black","red","blue"),
    legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
)
# bottom right
plot(data$Global_reactive_power,
     type="l",
     xlab="datetime",
     ylab="Global_reactive_power",
     xaxt="n"
)
axis(1, at=c(1,(length(data$Date)/2),length(data$Date)), labels=c("Thu","Fri","Sat"))
# Close writing to the file
dev.off()
