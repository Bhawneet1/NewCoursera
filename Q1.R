#Aggregate total emissions by year
totalEmissions <- aggregate(Emissions ~ year, NEI, sum)

#Plot emissions by year for Baltimore
plot(totalEmissions$year, totalEmissions$Emissions, main="Total Emissions by Year", xlab="Year", ylab="Emissions", type="l", col="red")

