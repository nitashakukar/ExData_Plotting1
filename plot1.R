expdata<-read.table("C:/Users/Nina Sagar/Documents/Nitasha/Trainings/Exploratory data analysis/exdata-data-household_power_consumption/household_power_consumption.txt",sep=";",header=TRUE,na.strings="?",colClasses="character")
expdata$Global_active_power<-as.numeric(expdata$Global_active_power)
expdata$Date<-as.Date(expdata$Date,format="%d/%m/%Y")
expdata<-expdata[expdata$Date=="2007-02-01"|expdata$Date=="2007-02-02",]
png(file="plot1.png")
hist(expdata3$Global_active_power,xlab="Global Active Power (kilowatts)",main="Global Active Power",col="red")
dev.off()
