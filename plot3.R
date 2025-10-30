library(ggplot2)
library(dplyr)
data <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
baltimore<-data[data$fips=="24510",]
plot3<-baltimore %>%
        group_by(type,year )%>%
        summarise(Emissions=sum(Emissions),
                  .groups = "drop")
png("plot3.png", width = 480, height = 480)
ggplot(plot3,aes(x=year,y=Emissions,colour = type))+
        geom_line()+
        geom_point()+
        labs(title = "Baltimore City Emissions by Source Type (1999–2008)",
             x="Year",
             y="Total Emissions",
             color="Source Type")+
        scale_x_continuous(breaks =c(1999,2002,2005,2008)) +
        theme_minimal()
dev.off()
