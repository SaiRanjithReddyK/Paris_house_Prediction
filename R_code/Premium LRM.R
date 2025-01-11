# Subsetting the ParisHousing dataset to include only rows with Luxury price bracket
premium <- subset(ParisHousing, pricebracket == "Premium")

# Removing the price bracket variable (column 18) from the luxury dataset
premium <- premium[-c(18)]

# Displaying the luxury dataset in a viewer
View(premium)

# Removing insignificant variables from the luxury dataset
premium <- premium[-c(8, 12, 13, 14, 15)]

# Getting the number of rows in the luxury dataset
nrows <- nrow(premium)

# Creating a random sample index for 80% of the data
sample.index <- sample(c(1:nrows), 0.8 * nrows)

# Creating the training dataset using the sampled index
premiumhousing_train <- premium[sample.index,]

# Creating the test dataset by excluding the sampled index
premiumhousing_test <- premium[-sample.index,]

# Building a linear regression model on the training data
premiummodel <- lm(price ~ ., premiumhousing_train)

# Displaying a summary of the linear regression model
summary(premiummodel)

# Plotting fitted values against residuals
plot(fitted(premiummodel), resid(premiummodel))

# Creating a boxplot of residuals for the premium house model
boxplot(resid(premiummodel), main = "Residuals of Premium House")

# Generating predictions on the test set using the luxury house model
premiumhousing_testPrediction <- predict(premiummodel, newdata = premiumhousing_test)

# Calculating residuals on the test set
residuals_test <- premiumhousing_test$price - premiumhousing_testPrediction

# Creating a boxplot of residuals on the test set
boxplot(residuals_test, main = "Boxplot of Residuals on Test Data")
