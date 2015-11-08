# Set up .png
png("plot3.png",
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
# Make the plot
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
    col=c("black","red","blue"),
    legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
)
# Close writing to the file
dev.off()
