#Isolate Baltimore data by subsetting
baltimore <- subset(NEI, NEI$fips=="24510")

#Aggregate emissions by year for Baltimore
baltimoreEmissions <- aggregate(Emissions ~ year, baltimore, sum)

#Plot emissions by year for Baltimore
plot(baltimoreEmissions$year, baltimoreEmissions$Emissions, main="Total Baltimore Emissions by Year", xlab="Year", ylab="Emissions", type="l", col="red")