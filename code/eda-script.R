csv_data <- read.csv("../data/Advertising.csv", sep = ",", row.names = 1)

sink(file = "../data/eda-output.txt")
summary(csv_data)
sink()

png(filename = "../images/histogram-tv.png")
hist(csv_data$TV)
dev.off()

pdf(file = "../images/histogram-tv.pdf")
hist(csv_data$TV)
dev.off()

png(filename = "../images/histogram-sales.png")
hist(csv_data$Sales)
dev.off()

pdf(file = "../images/histogram-sales.pdf")
hist(csv_data$Sales)
dev.off()


