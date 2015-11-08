
data = read.csv("ExpDataAnAssign1/dataFeb1-2.txt")
par(mfrow=c(2,2))
# top left
plot(data$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)",
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
legend("topright", lty=c(1,1), col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
# bottom right
plot(data$Global_reactive_power,
     type="l",
     xlab="datetime",
     ylab="Global_reactive_power",
     xaxt="n"
)
axis(1, at=c(1,(length(data$Date)/2),length(data$Date)), labels=c("Thu","Fri","Sat"))