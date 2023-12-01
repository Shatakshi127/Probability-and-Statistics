data=read.csv(file.choose())
dim(data)
head(data, 2)
head(data,5)

# Calculate the mean of the "Roll" column
mean_roll <- mean(data$Roll)

# Calculate the highest number in the "Sno" column
max_sno <- max(data$Sno, na.rm = TRUE)

# Calculate row-wise sums of "Roll" and "Sno"
row_sums <- rowSums(data[, c("Roll", "Sno")], na.rm = TRUE)

# Calculate column-wise sums of "Roll" and "Sno"
col_sums <- colSums(data[, c("Roll", "Sno")], na.rm = TRUE)

# Print the results
cat("Mean of Roll column:", mean_roll, "\n")
cat("Highest number in Sno column:", max_sno, "\n")
cat("Row-wise sums of Roll and Sno:\n", row_sums, "\n")
cat("Column-wise sums of Roll and Sno:\n", col_sums, "\n")
