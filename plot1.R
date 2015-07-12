setwd("C:/Users/Roro7_000/Documents/MOOC/Exploratory data analysis/Project/Project1")

fpe <- read.table("household_power_consumption.txt",header = TRUE,sep=";")

df<-as.data.frame(fpe)
d <- strptime(df$Date, format="%d/%m/%Y")
df$Date<-as.Date(d)
df<-df[df$Date>="2007-02-01" & df$Date<="2007-02-02",]
nrow(df)

png('ExData_Plotting1/plot1.png')
hist(as.numeric(as.vector(df$Global_active_power)),col="red",main="Global Active Power",
     xlab="Global Active Power (kilowatts)")
dev.off()