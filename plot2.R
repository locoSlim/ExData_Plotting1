

    dfnames <- read.table("household_power_consumption.txt", sep=";", stringsAsFactors=F, nrows=1)
    df <- read.csv("household_power_consumption.txt", sep=";", col.names=dfnames, 
                     skip=1, stringsAsFactors=F)
    
    df[, "Date"] <- as.Date(df$Date, format="%d/%m/%Y")
    df <- df[df$Date >= " 2007-02-01" & df$Date <= " 2007-02-02", ]
    
    df$dt <- paste(df$Date, df$Time, sep = " ")
    df$dt <- strptime(df$dt, format="%Y-%m-%d %H:%M:%S")
    
    with(df, plot(dt, as.numeric(Global_active_power), type="l",  
                  main="",
                  xlab="",
                  ylab = "Global Active Power (kilowatts)"))    
    
    dev.copy(png, file = "plot2.png") 
    dev.off()
    
    
    
    
    
    
         
    
    
    
    