# Paris House Price Prediction

## Overview
This project analyzes the housing market in Paris to predict property prices using clustering and regression models. The goal is to understand key factors affecting housing prices and provide actionable insights for buyers, sellers, and real estate agents.

## Project Goals
- Segment properties into **Luxury**, **Premium**, and **Basic** price brackets using clustering techniques.
- Predict house prices using regression models tailored for each price bracket.
- Evaluate the accuracy of the prediction models using statistical metrics (e.g., RMSE, R²).

## Dataset
The dataset consists of information on 10,000 properties in Paris, with the following features:
- `squareMeters`: Area of the house in square meters.
- `numberOfRooms`: Number of rooms.
- `hasYard`: Presence of a yard.
- `hasPool`: Presence of a pool.
- `floors`: Number of floors.
- `cityPartRange`: Neighborhood exclusivity index (0-10).
- `isNewBuilt`: Indicates if the house is new.
- And more features for detailed property attributes.

## Tools and Technologies
- **Data Cleaning & Analysis**: R
- **Visualization**: R Libraries (e.g., ggplot2, rpart.plot)
- **Machine Learning Models**: K-Means Clustering, Linear Regression, Neural Networks, Decision Trees


## Methodology
1. **Data Preprocessing**:
   - Checked for missing values and outliers.
   - Standardized numerical features.
2. **Clustering**:
   - Used K-Means to segment the dataset into Luxury, Premium, and Basic housing categories.
3. **Regression Models**:
   - Built separate linear regression models for each price category.
   - Evaluated model performance using RMSE and residual plots.
4. **Neural Networks and Decision Trees**:
   - Experimented with advanced models for better accuracy and insights.

## Key Insights
- **Luxury Properties**: Price is highly influenced by area, presence of luxury amenities, and neighborhood exclusivity.
- **Premium Properties**: Recent construction and yard space play a crucial role.
- **Basic Properties**: Garage space and safety features (e.g., storm protector) are key drivers.

## Results
- Achieved an RMSE of X for Luxury housing, Y for Premium, and Z for Basic housing.
- Visualized residuals to assess model accuracy.
- Decision tree models provided intuitive classification of properties.


