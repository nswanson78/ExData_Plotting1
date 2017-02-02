plot4<-function(){
    data<-read.table("../m4p1/household_power_consumption.txt",header=TRUE,sep=";",na.strings = "?")
    febData<-data[c(grep("^1/2/2007|^2/2/2007",as.character(data[,1])),69517),]
    val<-as.POSIXlt(paste(febData[1:2881,1],febData[1:2881,2]),format="%d/%m/%Y %H:%M:%S")
    png(file="plot4.png")
    par(mfrow=c(2,2))
    #upper left
    plot(val,febData$Global_active_power,type="l",xlab="",ylab="Global Active Power") 
    ##upper right
    plot(val,febData$Voltage,type="l",xlab="datetime",ylab="Voltage") 
    #lower left
    plot(val,febData$Sub_metering_1,type="l",col="black",xlab="",ylab="Energy sub metering") 
    lines(val,febData$Sub_metering_2,col="red") 
    lines(val,febData$Sub_metering_3,col="blue") 
    legend("topright",col=c("black","red","blue"),bty="n",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd="1")
    #lower right
    plot(val,febData$Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power") 
    dev.off()
}