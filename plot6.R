library(ggplot2)
library(dplyr)
data <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
vehicle_names<-unique(SCC$EI.Sector)[21:24]
vehicle<-subset(SCC,EI.Sector%in% vehicle_names)
balt_LA<-data[data$fips%in% c("24510","06037"),]
vehicle_balt_LA<-subset(balt_LA,SCC %in% vehicle$SCC)
plot6<-vehicle_balt_LA%>% group_by(City=fips,year)%>%
        summarise(Emissions=sum(Emissions),.groups = "drop")
png("plot6.png", width = 480, height = 480)
ggplot(plot6,aes(x=year,y=Emissions,color=City))+
        geom_line()+
        geom_point()+
        scale_color_manual(values = c("06037"="red","24510"="blue"),
                           labels=(c("06037"="Los Angeles County,California","24510"="Baltimore")))+
        theme_minimal()+
        labs(title = "Motor Vehicle Emissions: Baltimore vs Los Angeles")
dev.off()