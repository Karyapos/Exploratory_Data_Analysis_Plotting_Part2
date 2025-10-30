library(ggplot2)
library(dplyr)
data <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
baltimore<-subset(data,data$fips=="24510")
plot2<-with(baltimore,tapply(Emissions,year,sum))
png("plot2.png", width = 480, height = 480)
plot(names(plot2),plot2,type="b",
           xlab = "year",
           ylab = "total emission",
           main = "Total Emission by Year in Baltimore",
           xaxt="n", yaxt="n")
axis(1, at =c(1999,2002,2005,2008) , 
     labels = c(1999,2002,2005,2008))
axis(2,at=c(plot2[1:4]),labels = c(trunc(plot2[1:4])),las=2)
dev.off()