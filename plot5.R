library(ggplot2)
library(dplyr)
data <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
baltimore<-data[data$fips=="24510",]
vehicle_names<-unique(SCC$EI.Sector)[21:24]
vehicle<-subset(SCC,EI.Sector%in% vehicle_names)
balt_vehicle<-subset(baltimore,baltimore$SCC %in% vehicle$SCC)
plot5<-with(balt_vehicle,tapply(Emissions,year,sum))
png("plot5.png", width = 480, height = 480)
plot(names(plot5),plot5,type = "b",
     xlab = "year",
     ylab = "total emission",
     main = "Total Vehicle Emission by Year in Baltimore",
     xaxt="n")
axis(1, at =c(1999,2002,2005,2008) , 
     labels = c(1999,2002,2005,2008))
dev.off()