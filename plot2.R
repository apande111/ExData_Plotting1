library(data.table)
initial <- read.table("household_power_consumption.txt", header=TRUE,sep=";",
                      stringsAsFactors=FALSE,na.strings="?")
#initial <- transform(initial, Date = as.Date(Date,"%d/%m/%Y"))
initial <- data.table(initial)

initial[,datetime:=  paste(Date,Time)]

heu <- initial[as.Date(initial$Date,"%d/%m/%Y") == as.Date("01/02/2007","%d/%m/%Y") | 
               as.Date(initial$Date,"%d/%m/%Y") == as.Date("02/02/2007","%d/%m/%Y") ,]

 
png(file="plot2.png")
backg <- par("bg")
par(bg="transparent")
with(heu, plot(strptime(datetime,"%d/%m/%Y %H:%M:%S"),Global_active_power,type = "l",
               ylab= "Global Active Power (kilowatts)",xlab=""))
     
     
dev.off()
par(bg=backg)