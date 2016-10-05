csv_data <- read.csv(file = "data/Advertising.csv", sep = ",", row.names = 1)

reg <-  lm(csv_data$Sales ~ csv_data$TV)

summary(reg)
save(reg, file = "data/regression.RData")

pdf(file = "images/scatterplot-tv-sales.pdf")
plot(csv_data$TV, csv_data$Sales, pch = 19, col = "#8e8f94")
abline(reg, col = "#5679DF", lwd = 2) 
dev.off()

png(file = "images/scatterplot-tv-sales.png")
plot(csv_data$TV, csv_data$Sales, pch = 19, col = "#8e8f94")
abline(reg, col = "#5679DF", lwd = 2) 
dev.off()

