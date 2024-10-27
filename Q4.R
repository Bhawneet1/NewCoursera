coal <- SCC[grepl("coal", SCC$Short.Name, ignore.case = TRUE),]
coal2 <- NEI[NEI$SCC %in% coal$SCC,]
totalCoal <- aggregate(Emissions ~ year + type, coal2, sum)

ggplot(totalCoal, aes(year, Emissions, type)) + geom_point() + geom_line()