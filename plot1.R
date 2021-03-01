#Reading the power consumption text file 
power <- read.table("household_power_consumption.txt",skip=1,sep=";")

#Naming the data
names(power) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

#Subsetting power consumption
subpower <- subset(power,power$Date=="1/2/2007" | power$Date =="2/2/2007")

#Calling the basic plot function
hist(as.numeric(as.character(subpower$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")

# Adding a title to the graph
title(main="Global Active Power")
