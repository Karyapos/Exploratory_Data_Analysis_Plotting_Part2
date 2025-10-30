library(ggplot2)
library(dplyr)
data <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
coal<-subset(SCC,EI.Sector %in% 
        c("Fuel Comb - Electric Generation - Coal",
        "Fuel Comb - Industrial Boilers, ICEs - Coal",
        "Fuel Comb - Comm/Institutional - Coal"))
data_coal<-subset(data,SCC %in% coal$SCC)
plot4<-with(data_coal,tapply(Emissions,year,sum))
png("plot4.png", width = 480, height = 480)
plot(names(plot4),plot4,type = "b",
     xlab = "year",
     ylab = "total emission",
     main = "Total Coal Emission by Year in the U.S.A",
     xaxt="n")
axis(1, at =c(1999,2002,2005,2008) , 
     labels = c(1999,2002,2005,2008))
dev.off()