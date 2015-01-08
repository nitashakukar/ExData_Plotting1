expdata<-read.table("C:/Users/Nina Sagar/Documents/Nitasha/Trainings/Exploratory data analysis/exdata-data-household_power_consumption/household_power_consumption.txt",sep=";",header=TRUE,na.strings="?",colClasses="character")
expdata$Global_active_power<-as.numeric(expdata$Global_active_power)
expdata$Date<-as.Date(expdata$Date,format="%d/%m/%Y")
expdata<-expdata[expdata$Date=="2007-02-01"|expdata$Date=="2007-02-02",]
expdata$datetime<-with(expdata,paste(Date,Time))
expdata$datetime<-strptime(expdata$datetime,"%Y-%m-%d %H:%M:%S")
png(file="plot2.png")
with(expdata,plot(datetime,Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)",lwd=1))
dev.off()
