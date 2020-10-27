library(lubridate)
library(dplyr)

# Gráfico 3

# Lectura de datos.

setwd("C:/Users/Pavilion/Desktop/Coursera/Curso de ciencia de datos/4. Análisis exploratorio de datos/Proyecto semana 1")
data<-read.table(file="household_power_consumption.txt", header = TRUE, sep = ";", colClasses = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"), na.strings = "?")
data$Date<-dmy(data$Date)
datacom<-subset(data, data$Date>="2007-02-01" & data$Date<="2007-02-02")%>%
        mutate(datetime=ymd_hms(paste(Date, Time)))

# Hacer tramas 
png(filename="plot4.png", width = 480, height = 480)
par(mfrow=c(2,2))
## Figura 1
plot(datacom$Global_active_power~datacom$datetime,col = "black", ylab = "Global Active Power", xlab = "", type="l")
## Figura 2
plot(datacom$Voltage~datacom$datetime,col = "black", ylab = "Voltage", xlab = "datetime", type="l")
## Figura 3
plot(datacom$Sub_metering_1~datacom$datetime,col = "black", ylab = "Energy sub metering", xlab = "", type="l")
lines(datacom$Sub_metering_2~datacom$datetime, datacom, col = "red", type="l")
lines(datacom$Sub_metering_3~datacom$datetime, datacom, col = "blue", type="l")
legend(x = "topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)
## Figura 4
plot(datacom$Global_reactive_power~datacom$datetime,col = "black", ylab = "Global_reactive_Power", xlab = "datetime", type="l")
dev.off()

# Ver gráfica en png
file.show("plot4.png")
