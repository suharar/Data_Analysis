# Project 7 - Rental Bike Usage Prediction

![Python](https://img.shields.io/badge/Python-FFD43B?style=for-the-badge&logo=python&logoColor=blue)
![Pandas](https://img.shields.io/badge/Pandas-2C2D72?style=for-the-badge&logo=pandas&logoColor=white)
![Numpy](https://img.shields.io/badge/Numpy-777BB4?style=for-the-badge&logo=numpy&logoColor=white)
![Plotly](https://img.shields.io/badge/Plotly-239120?style=for-the-badge&logo=plotly&logoColor=white)
<br>

## 1. Overview
This project demonstrates the application of machine learning, particularly Neural Networks (NN) and XGBoost, for predicting bike sharing demand. Using Python, the project explores advanced regression techniques and ensemble methods to enhance prediction accuracy. Initial tasks involve preprocessing and visual analysis of the data, followed by the development and training of two distinct models: XGBoost and Long Short-Term Memory (LSTM) networks.

The XGBoost model focuses on predicting casual and registered user counts separately before combining these predictions for the total count, and also directly predicting the total count. The LSTM model, on the other hand, leverages sequential data processing to predict bike sharing demand. Both models undergo hyperparameter tuning with Optuna to optimize their performance. The project evaluates model efficacy using Mean Absolute Percentage Error (MAPE) and further investigates model ensemble strategies to combine predictions for improved accuracy.

## 2. Skills and Techniques Demonstrated in the Project
| Skill/Technique                            | Description |
|--------------------------------------------|-------------|
| Data Preprocessing and Visualization       | Employed seaborn for data visualization and pandas for data preprocessing, setting the stage for accurate model input. |
| XGBoost Regression                         | Utilized XGBoost for demand prediction, including hyperparameter tuning with Optuna to find the optimal model configuration. |
| LSTM Neural Networks                       | Deployed LSTM models to capture sequential dependencies in the data, optimizing network architecture with Keras Tuner. |
| Ensemble Methods                           | Combined model predictions using weighted averages, exploring the synergy between XGBoost and LSTM predictions for enhanced performance. |
| Hyperparameter Optimization                | Applied Optuna for systematic search of the hyperparameter space in XGBoost, and Keras Tuner for LSTM, ensuring models are finely tuned. |
| Model Evaluation                           | Assessed models using Mean Absolute Percentage Error (MAPE), providing a clear comparison of model performance. |
| Feature Importance Analysis                | Analyzed and visualized feature importance in XGBoost models to identify key predictors of bike sharing demand. |