#ques1(a)
num_gold <- 20
num_silver <- 30
num_bronze <- 50
coin_types <- c(rep("Gold", num_gold), rep("Silver", num_silver), rep("Bronze", num_bronze))
num_draws <- 10
sample_space <- sample(coin_types, num_draws, replace = FALSE)
print(sample_space)

#ques1(b)
outcomes <- c("Success", "Failure")
probabilities <- c(0.9, 0.1)
num_procedures <- 10
sample_space <- sample(outcomes, num_procedures, prob = probabilities, replace = TRUE)
print(sample_space)

#ques2
# Number of simulations
num_simulations <- 10000

# Number of days in a year
days_in_year <- 365

# Vector to store the estimated probabilities
estimated_probs <- numeric()

# Loop through different values of n
for (n in 2:100) {
  matching_birthday_count <- 0
  
  for (sim in 1:num_simulations) {
    birthdays <- sample(1:days_in_year, n, replace = TRUE)
    
    if (any(duplicated(birthdays))) {
      matching_birthday_count <- matching_birthday_count + 1
    }
  }
  
  estimated_prob <- matching_birthday_count / num_simulations
  estimated_probs <- c(estimated_probs, estimated_prob)
}

# Plot the results
plot(2:100, estimated_probs, type = "l", xlab = "Number of People (n)", ylab = "Estimated Probability")

#ques3
conditional_probability <- function(A_given_B,B,A) {
  return (A_given_B*B/A)
}

p_cloudy <- 0.4
p_rain <- 0.2
p_cloudy_given_rain <- 0.85
p_rain_given_cloudy <- conditional_probability(p_cloudy_given_rain,p_rain,p_cloudy)
print(p_rain_given_cloudy)

#ques4
data("iris")
head(iris) # prints first 6 rows
str(iris) # prints structure of database 

range_sepal_length <- range(iris$Sepal.Length)
cat("Range of Sepal Length:", range_sepal_length, "\n")

mean_sepal_length <- mean(iris$Sepal.Length)
cat("Mean Sepal Length:", mean_sepal_length, "\n")

median_sepal_length <- median(iris$Sepal.Length)
cat("Median Sepal Length:", median_sepal_length, "\n")

quartiles_sepal_length <- quantile(iris$Sepal.Length, c(0.25, 0.75))
iqr_sepal_length <- quartiles_sepal_length[2] - quartiles_sepal_length[1]
cat("First Quartile:", quartiles_sepal_length[1], "\n")
cat("Third Quartile:", quartiles_sepal_length[2], "\n")
cat("Interquartile Range:", iqr_sepal_length, "\n")

sd_sepal_length <- sd(iris$Sepal.Length)
var_sepal_length <- var(iris$Sepal.Length)
cat("Standard Deviation:", sd_sepal_length, "\n")
cat("Variance:", var_sepal_length, "\n")

summary(iris)

#ques5
calculate_mode <- function(data) {
  unique_values <- unique(data)
  frequencies <- tabulate(match(data, unique_values))
  
  mode_index <- which.max(frequencies)
  mode_value <- unique_values[mode_index]
  
  return(mode_value)
}

data_vector <- c(2, 4, 6, 4, 8, 4, 10, 6)
mode_result <- calculate_mode(data_vector)
cat("Mode:", mode_result, "\n")
