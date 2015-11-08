# This is a test
data = read.csv("ExpDataAnAssign1/dataFeb1-2.txt")
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