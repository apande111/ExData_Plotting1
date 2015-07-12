library(data.table)
initial <- read.table("household_power_consumption.txt", header=TRUE,sep=";",
                      stringsAsFactors=FALSE,na.strings="?")
#initial <- transform(initial, Date = as.Date(Date,"%d/%m/%Y"))
initial <- data.table(initial)

initial[,datetime:=  paste(Date,Time)]

heu <- initial[as.Date(initial$Date,"%d/%m/%Y") == as.Date("01/02/2007","%d/%m/%Y") | 
                 as.Date(initial$Date,"%d/%m/%Y") == as.Date("02/02/2007","%d/%m/%Y") ,]
heu <- transform(heu, Global_active_power = as.numeric(Global_active_power))
png(file="plot1.png")
backg <- par("bg")
par(bg="transparent")
with(heu, hist(Global_active_power,main = "Global Active Power", col="Red" ,
               xlab= "Global Active Power (kilowatts)"))

dev.off()
par(bg=backg)

