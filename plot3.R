<<<<<<< HEAD
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
png(filename="plot3.png", width = 480, height = 480)
plot(datacom$Sub_metering_1~datacom$datetime,col = "black", ylab = "Energy sub metering", xlab = "", type="l")
lines(datacom$Sub_metering_2~datacom$datetime, datacom, col = "red", type="l")
lines(datacom$Sub_metering_3~datacom$datetime, datacom, col = "blue", type="l")
legend(x = "topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)
dev.off()

# Ver gráfica en png
file.show("plot3.png")
=======
library(lubridate)
library(dplyr)

# Gráfico 3

# Lectura de datos

setwd("C:/Users/Pavilion/Desktop/Coursera/Curso de ciencia de datos/4. Análisis exploratorio de datos/Proyecto semana 1")
data<-read.table(file="household_power_consumption.txt", header = TRUE, sep = ";", colClasses = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"), na.strings = "?")
data$Date<-dmy(data$Date)
datacom<-subset(data, data$Date>="2007-02-01" & data$Date<="2007-02-02")%>%
        mutate(datetime=ymd_hms(paste(Date, Time)))


# Hacer tramas 
png(filename="plot3.png", width = 480, height = 480)
plot(datacom$Sub_metering_1~datacom$datetime,col = "black", ylab = "Energy sub metering", xlab = "", type="l")
lines(datacom$Sub_metering_2~datacom$datetime, datacom, col = "red", type="l")
lines(datacom$Sub_metering_3~datacom$datetime, datacom, col = "blue", type="l")
legend(x = "topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)
dev.off()

# Ver gráfica en png
file.show("plot3.png")
>>>>>>> 839e800c0e871d9027cba0fda7841e3f660ba247
