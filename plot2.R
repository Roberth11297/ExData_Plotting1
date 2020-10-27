library(lubridate)
library(dplyr)

# Gráfico 2

# Lectura de datos

setwd("C:/Users/Pavilion/Desktop/Coursera/Curso de ciencia de datos/4. Análisis exploratorio de datos/Proyecto semana 1")
data<-read.table(file="household_power_consumption.txt", header = TRUE, sep = ";", colClasses = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"), na.strings = "?")
data$Date<-dmy(data$Date)
datacom<-subset(data, data$Date>="2007-02-01" & data$Date<="2007-02-02")%>%
        mutate(datetime=ymd_hms(paste(Date, Time)))


# Hacer tramas 
png(filename="plot2.png", width = 480, height = 480)
plot(datacom$Global_active_power~datacom$datetime,col = "black", ylab = "Global Active Power (kilowatts)", xlab = "", type="l")
dev.off()

# Ver gráfica en png
file.show("plot2.png")
