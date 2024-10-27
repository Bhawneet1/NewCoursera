#Subset both Baltimore and LA and then motor vehicles
dualLocations <-subset(NEI, NEI$fips %in% c("24510", "06037") & NEI$type == "ON-ROAD")
dualLocationVehicles <- aggregate(Emissions ~ year + fips, dualLocations, sum)

ggplot(dualLocationVehicles, aes(year, Emissions, col=fips)) + geom_point() + geom_line() + ggtitle("Baltimore vs LA County Motor Vehicle Emissions") + scale_colour_discrete(name = "Location", labels = c("LA County", "Baltimore"))