png(file="plot3.png")
backg <- par("bg")
par(bg="transparent")

with(heu, plot(strptime(datetime,"%d/%m/%Y %H:%M:%S"),Sub_metering_1,col="black",type = "l",
               ylab= "Energy Sub metering",xlab=""))
with(heu, lines(strptime(datetime,"%d/%m/%Y %H:%M:%S"),Sub_metering_2,col="red"))
with(heu, lines(strptime(datetime,"%d/%m/%Y %H:%M:%S"),Sub_metering_3,col="blue"))

legend("topright", lty=c(1,1,1),col = c("black","blue", "red"), 
legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))


dev.off()
par(bg=backg)