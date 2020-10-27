library(lubridate)

# Gráfico 1

# Lectura de datos,

setwd("C:/Users/Pavilion/Desktop/Coursera/Curso de ciencia de datos/4. Análisis exploratorio de datos/Proyecto semana 1")
data<-read.table(file="household_power_consumption.txt", header = TRUE, sep = ";", colClasses = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"), na.strings = "?")
data$Date<-dmy(data$Date)
data$Time<-hms(data$Time)
datacom<-subset(data, data$Date>="2007-02-01" & data$Date<="2007-02-02")

# Hacer tramas 
png(filename="plot1.png", width = 480, height = 480)
hist(datacom$Global_active_power,col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()

# Ver gráfica en png
file.show("plot1.png")
