# Project 4 - Traffic Analysis through Linear Regression Model

![Python](https://img.shields.io/badge/Python-FFD43B?style=for-the-badge&logo=python&logoColor=blue)
![Pandas](https://img.shields.io/badge/Pandas-2C2D72?style=for-the-badge&logo=pandas&logoColor=white)
![Numpy](https://img.shields.io/badge/Numpy-777BB4?style=for-the-badge&logo=numpy&logoColor=white)
![Plotly](https://img.shields.io/badge/Plotly-239120?style=for-the-badge&logo=plotly&logoColor=white)
<br>

## 1. Overview
This project explores traffic data to estimate vehicle speeds using linear, ridge, and lasso regression models in Python, tackling multicollinearity and optimizing variable selection. Initial analysis visualizes variable relationships, revealing potential multicollinearity issues among 'flow', 'occupancy', and 'flow_ratio'. A comprehensive approach combines these into a single 'slow_line_utilization_index', reducing multicollinearity while preserving valuable traffic insights. This transformation facilitates a refined model focusing on significant predictors of speed. Comparing model performances through K-Fold validation and MSE calculations, the analysis confirms the chosen variables' effectiveness, with minimal differences among the regression techniques. This process exemplifies strategic data handling and model evaluation, emphasizing the importance of addressing multicollinearity and thoughtful variable selection in regression analysis.

## 2. Skills and Techniques Demonstrated in the Project
| Skill/Technique                     | Description |
|-------------------------------------|-------------|
| Data Visualization                  | Leveraged seaborn and matplotlib to explore relationships between variables, providing insights into data distribution and potential multicollinearity. |
| Multicollinearity Detection         | Identified and addressed multicollinearity among predictors using correlation matrices and heatmaps, enhancing model reliability. |
| Variable Transformation             | Created new composite variables to solve multicollinearity problems, demonstrating creativity in feature engineering. |
| Linear Regression Analysis          | Employed multiple linear regression to model traffic speed, showcasing foundational statistical modeling skills. |
| Regularization Techniques           | Applied ridge and lasso regression to refine model predictions and handle overfitting, illustrating understanding of regularization methods. |
| Cross-Validation                    | Utilized K-Fold cross-validation to ensure model stability and accuracy, highlighting expertise in model evaluation techniques. |
| Model Comparison and Selection      | Compared linear, ridge, and lasso regression models to select the best-performing model, showcasing analytical decision-making. |
