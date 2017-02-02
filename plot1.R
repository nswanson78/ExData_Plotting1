plot1<-function(){
    data<-read.table("../m4p1/household_power_consumption.txt",header=TRUE,sep=";",na.strings = "?")
    febData<-data[grep("^1/2/2007|^2/2/2007",as.character(data[,1])),]
    png(file="plot1.png")
    hist(febData$Global_active_power,breaks=12,col="red",
         xlab = "Frequency",ylab="Global Active Power (kilowatts)",main="Global Active Power")
    dev.off()
}
