setwd("C:/Users/Roro7_000/Documents/MOOC/Exploratory data analysis/Project/Project1")


fpe <- read.table("household_power_consumption.txt",header = TRUE,sep=";")

df<-as.data.frame(fpe)
df$Time <- strptime(paste0(df$Date," ",df$Time), '%d/%m/%Y %H:%M:%S')

df<-df[as.Date(df$Time)>="2007-02-01" & as.Date(df$Time)<="2007-02-02",]
nrow(df)

png('ExData_Plotting1/plot2.png')

plot(df$Time, as.numeric(as.vector(df$Global_active_power)),type="l",
     xlab=" ",ylab="Global Active Power (kilowatts)")
dev.off()