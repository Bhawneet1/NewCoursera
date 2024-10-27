#Aggregate emissions by year and type using baltimore variable used previously
baltimoreType <- aggregate(Emissions ~ year + type, baltimore, sum)

#Plot
ggplot(data=baltimoreType, aes(year, Emissions, col=type)) + geom_point() + geom_line() + ggtitle("Baltimore Emissions by Year and Type")