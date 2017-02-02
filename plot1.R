plot1<-function(){
    ##for my comp path=../m4p1/household_power_consumption.txt
    ##
    ##The dataset has 2,075,259 rows and 9 columns. First calculate a rough estimate of how much memory the 
    ##dataset will require in memory before reading into R. Make sure your computer has enough memory 
    ##(most modern computers should be fine).
    ##We will only be using data from the dates 2007-02-01 and 2007-02-02. One alternative is to read the data from just 
    ##those dates rather than reading in the entire dataset and subsetting to those dates.
    ##You may find it useful to convert the Date and Time variables to Date/Time classes in R using the  strptime()  
    ##and  as.Date()  functions.
    ##Note that in this dataset missing values are coded as  ? 
    #start 66637
    #69516 end of 02/02
    data<-read.table("../m4p1/household_power_consumption.txt",header=TRUE,sep=";",na.strings = "?")
    febData<-data[grep("^1/2/2007|^2/2/2007",as.character(data[,1])),]
    png(file="plot1.png")
    hist(febData$Global_active_power,breaks=12,col="red",
         xlab = "Frequency",ylab="Global Active Power (kilowatts)",main="Global Active Power")
    dev.off()
}