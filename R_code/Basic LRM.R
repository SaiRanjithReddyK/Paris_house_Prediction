basic <- subset(ParisHousing, pricebracket == "Basic")
basic <- basic[-c(18)]
View(basic)
basic <- basic[-c(8)]
nrows <- nrow(basic)
sample.index <- sample(c(1:nrows), 0.8 * nrows)
basichousing_train <- basic[sample.index,]
basichousing_test <- basic[-sample.index,]
basicmodel <- lm(price ~ ., basichousing_train)
summary(basicmodel)
plot(fitted(basicmodel), resid(basicmodel))
boxplot(resid(basicmodel), main = "Residuals of Basic Housing")
basichousing_testPrediction <- predict(basicmodel, newdata = basichousing_test)
residuals_test <- basichousing_test$price - basichousing_testPrediction
boxplot(residuals_test, main = "Boxplot of Residuals on Test Data")
