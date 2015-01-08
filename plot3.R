expdata<-read.table("C:/Users/Nina Sagar/Documents/Nitasha/Trainings/Exploratory data analysis/exdata-data-household_power_consumption/household_power_consumption.txt",sep=";",header=TRUE,na.strings="?",colClasses="character")
expdata$Global_active_power<-as.numeric(expdata$Global_active_power)
expdata$Date<-as.Date(expdata$Date,format="%d/%m/%Y")
expdata<-expdata[expdata$Date=="2007-02-01"|expdata$Date=="2007-02-02",]
expdata$datetime<-with(expdata,paste(Date,Time))
expdata$datetime<-strptime(expdata$datetime,"%Y-%m-%d %H:%M:%S")
png(file="plot3.png")
with(expdata,plot(datetime,Sub_metering_1,type="n",xlab="",ylab="Energy Sub Metering"))
with(expdata,lines(datetime,Sub_metering_1,col="black"))
with(expdata,lines(datetime,Sub_metering_2,col="red"))
with(expdata,lines(datetime,Sub_metering_3,col="blue"))
legend("topright",cex=1,y.intersp=0.8,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,xjust=1)

dev.off()
