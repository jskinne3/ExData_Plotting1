# This is a test
data = read.csv("ExpDataAnAssign1/dataFeb1-2.txt")
plot(data$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)",
     xaxt="n"
)
axis(1, at=c(1,(length(data$Date)/2),length(data$Date)), labels=c("Thu","Fri","Sat"))
