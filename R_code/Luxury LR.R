# Subsetting the ParisHousing dataset to include only rows with Luxury price bracket
luxury <- subset(ParisHousing, pricebracket == "Luxury")

# Removing the price bracket variable (column 18) from the luxury dataset
luxury <- luxury[-c(18)]

# Displaying the luxury dataset in a viewer
View(luxury)

# Removing insignificant variables from the luxury dataset
luxury <- luxury[-c(2, 6, 8, 9, 12, 13, 14, 15)]

# Getting the number of rows in the luxury dataset
nrows <- nrow(luxury)

# Creating a random sample index for 80% of the data
sample.index <- sample(c(1:nrows), 0.8 * nrows)

# Creating the training dataset using the sampled index
luxhousing_train <- luxury[sample.index,]

# Creating the test dataset by excluding the sampled index
luxhousing_test <- luxury[-sample.index,]

# Building a linear regression model on the training data
luxmodel <- lm(price ~ ., luxhousing_train)

# Displaying a summary of the linear regression model
summary(luxmodel)

# Plotting fitted values against residuals
plot(fitted(luxmodel), resid(luxmodel))

# Creating a boxplot of residuals for the luxury house model
boxplot(resid(luxmodel), main = "Residuals of Luxury House")

# Generating predictions on the test set using the luxury house model
luxhousing_testPrediction <- predict(luxmodel, newdata = luxhousing_test)

# Calculating residuals on the test set
residuals_test <- luxhousing_test$price - luxhousing_testPrediction

# Creating a boxplot of residuals on the test set
boxplot(residuals_test, main = "Boxplot of Residuals on Test Data")
