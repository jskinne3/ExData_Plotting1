# Set up .png
png("plot1.png",
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
hist(data$Global_active_power,
    main="Global Active Power",
    xlab="Global Active Power (kilowatts)",
    col="red"
)
# Close writing to the file
dev.off()
