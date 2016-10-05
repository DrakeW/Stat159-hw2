csv_data <- read.csv("../data/Advertising.csv", sep = ",", row.names = 1)

summary_stats <- function(data, col_name, output_file) {
  data_min <- min(data)
  data_max <- max(data)
  data_avg <- mean(data)
  data_median <- median(data)
  data_sd <- sd(data)
  cat("Summary Statistics for", col_name, "\n\n", file = output_file, append = TRUE)
  cat(sprintf("Minimum: %0.2f", data_min), "\n", file = output_file, append = TRUE)
  cat(sprintf("Maximum: %0.2f", data_max), "\n", file = output_file, append = TRUE)
  cat(sprintf("Mean   : %0.2f", data_avg), "\n", file = output_file, append = TRUE)
  cat(sprintf("Median : %0.2f", data_median), "\n", file = output_file, append = TRUE)
  cat(sprintf("Std Dev: %0.2f", data_sd), "\n\n", file = output_file, append = TRUE)
}

sink(file = "../data/eda-output.txt")
summary_stats(csv_data$TV, "TV", "../data/eda-output.txt")
summary_stats(csv_data$Sales, "Sales", "../data/eda-output.txt")
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


