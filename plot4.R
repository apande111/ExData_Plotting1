png(file="plot4.png")
backg <- par("bg")
par(bg="transparent")
par(mfrow = c(2, 2))

with(heu, {
  plot(strptime(datetime,"%d/%m/%Y %H:%M:%S"),Global_active_power,type = "l",
       ylab= "Global Active Power (kilowatts)",xlab="")
  plot(strptime(datetime,"%d/%m/%Y %H:%M:%S"),Voltage,type = "l",
       ylab= "Voltage",xlab="datetime")
  plot(strptime(datetime,"%d/%m/%Y %H:%M:%S"),Sub_metering_1,col="black",type = "l",
       ylab= "Energy Sub metering",xlab="")
  lines(strptime(datetime,"%d/%m/%Y %H:%M:%S"),Sub_metering_2,col="red")
  lines(strptime(datetime,"%d/%m/%Y %H:%M:%S"),Sub_metering_3,col="blue")
  legend("topright", lty=c(1,1,1),col = c("black","blue", "red"), 
         legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
  
  plot(strptime(datetime,"%d/%m/%Y %H:%M:%S"),Global_reactive_power,type = "l",
      ,xlab="datetime")
  
  
})

dev.off()
par(bg=backg)