


    dfnames <- read.table("household_power_consumption.txt", sep=";", stringsAsFactors=F, nrows=1)
    df <- read.table("household_power_consumption.txt", sep=";", col.names=dfnames, 
                     skip=1, stringsAsFactors=F)
    df[, "Date"] <- as.Date(df$Date, format="%d/%m/%Y")
    df <- df[df$Date >= " 2007-02-01" & df$Date <= " 2007-02-02", ]
    
    with(df, hist(as.numeric(Global_active_power), col="red", main="Global Active Power", 
                   xlab="Global Active Power (kilowatts)"))    
    dev.copy(png, file = "plot1.png") 
    dev.off()
    
    
    
    
    
    
    
    
    
    
    