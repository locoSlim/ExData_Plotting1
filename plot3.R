

    
    dfnames <- read.table("household_power_consumption.txt", sep=";", stringsAsFactors=F, nrows=1)
    df <- read.csv("household_power_consumption.txt", sep=";", col.names=dfnames, 
                     skip=1, stringsAsFactors=F)
    
    df[, "Date"] <- as.Date(df$Date, format="%d/%m/%Y")
    df <- df[df$Date >= " 2007-02-01" & df$Date <= " 2007-02-02", ]
    
    df$dt <- paste(df$Date, df$Time, sep = " ")
    df$dt <- strptime(df$dt, format="%Y-%m-%d %H:%M:%S")
    
    png(file = "plot3.png", width = 480, height = 480)
    with(df, plot(dt, as.numeric(Sub_metering_1), type="l",  
                  main="",
                  xlab="",
                  ylab = "Energy sub metering"))    
    
    lines(df$dt, as.numeric(df$Sub_metering_2), col="red")
    lines(df$dt, as.numeric(df$Sub_metering_3), col="blue")
    legend("topright", names(df)[7:9], col=c("black", "red", "blue"), lty = "solid", lwd=2)
    #dev.copy(png, file = "plot3.png") 
    dev.off()
    
    
    
    
    
    
         
    
    
    
    