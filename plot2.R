plot2<-function(){
    data<-read.table("../m4p1/household_power_consumption.txt",header=TRUE,sep=";",na.strings = "?")
    febData<-data[c(grep("^1/2/2007|^2/2/2007",as.character(data[,1])),69517),]
    png(file="plot2.png")
    val<-as.POSIXlt(paste(febData[1:2881,1],febData[1:2881,2]),format="%d/%m/%Y %H:%M:%S")
    plot(val,febData$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)") 
    dev.off()
}