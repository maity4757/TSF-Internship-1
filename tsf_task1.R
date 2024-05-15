# Sample data
# Create vectors for Hours and Scores
Hours <- c(2.5, 5.1, 3.2, 8.5, 3.5, 1.5, 9.2, 5.5, 8.3, 2.7, 7.7, 5.9, 4.5, 3.3, 1.1, 8.9, 2.5, 1.9, 6.1, 7.4, 2.7, 4.8, 3.8, 6.9, 7.8)
Scores <- c(21, 47, 27, 75, 30, 20, 88, 60, 81, 25, 85, 62, 41, 42, 17, 95, 30, 24, 67, 69, 30, 54, 35, 76, 86)

# Create a data frame
data <- data.frame(Hours, Scores)

# Print the data frame
print(data)


# Fit the linear regression model
model <- lm(Scores ~ Hours, data = data)
model

# Summary of the model
summary(model)

plot(data$Hours,data$Scores,xlab = "Hours", ylab = "Scores", main = "Scatter Plot with Regression Line")
abline(model)

# Predict percentage based on study hours
new_data <- data.frame(Hours = 9.25)# Predicting for 9.25 hours of study
new_data
predicted_percentage <- predict(model, newdata = new_data)
print(predicted_percentage)
#predicted percentage score for 9.25 hours of study is 92.9 percentage
