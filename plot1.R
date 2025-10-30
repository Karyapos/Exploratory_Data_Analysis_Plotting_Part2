library(ggplot2)
library(dplyr)
data <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
plot1<-with(data,tapply(Emissions,year,sum))
png("plot1.png", width = 480, height = 480)
plot(names(plot1),plot1,type = "b",
     xlab = "year",
     ylab = "total emission",
     main = "Total Emission by Year in the U.S.A",
     xaxt="n", yaxt="n")
axis(1, at =c(1999,2002,2005,2008) , 
     labels = c(1999,2002,2005,2008))
axis(2,at=c(plot1[1:4]),labels =c ("7.3M","5.6M","5.5M","3.5M"),las=2)
dev.off()