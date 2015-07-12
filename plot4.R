setwd("C:/Users/Roro7_000/Documents/MOOC/Exploratory data analysis/Project/Project1")


fpe <- read.table("household_power_consumption.txt",header = TRUE,sep=";")
df<-as.data.frame(fpe)
df$Time <- strptime(paste0(df$Date," ",df$Time), '%d/%m/%Y %H:%M:%S')

df<-df[as.Date(df$Time)>="2007-02-01" & as.Date(df$Time)<="2007-02-02",]
nrow(df)

png('ExData_Plotting1/plot4.png')
par(mfrow=c(2,2))

##########  PLOT 1
plot(df$Time, as.numeric(as.vector(df$Global_active_power)),type="l",
     xlab=" ",ylab="Global Active Power (kilowatts)")

##########  PLOT 2
plot(df$Time, as.numeric(as.vector(df$Voltage)),type="l",
     xlab="datetime",ylab="Voltage")

##########  PLOT 3
plot(df$Time, as.numeric(as.vector(df$Sub_metering_1)),type="l",
     xlab=" ",ylab="Energy sub metering")
lines(df$Time, as.numeric(as.vector(df$Sub_metering_2)),col="red")
lines(df$Time, as.numeric(as.vector(df$Sub_metering_3)),col="blue")
legend("topright",lty=c(1,1,1),col=c("black","red","blue"),
       legend=c("Sub Metering 1","Sub Metering 2","Sub Metering 3"),bty = "n", cex=0.7)

##########  PLOT 4
plot(df$Time, as.numeric(as.vector(df$Global_reactive_power)),type="l",
     xlab="datetime",ylab="Global_reactive_power")

dev.off()