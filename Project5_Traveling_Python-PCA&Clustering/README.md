# Project 5 - Vacation Analysis PCA and Clustering

![Python](https://img.shields.io/badge/Python-FFD43B?style=for-the-badge&logo=python&logoColor=blue)
![Pandas](https://img.shields.io/badge/Pandas-2C2D72?style=for-the-badge&logo=pandas&logoColor=white)
![Numpy](https://img.shields.io/badge/Numpy-777BB4?style=for-the-badge&logo=numpy&logoColor=white)
![Plotly](https://img.shields.io/badge/Plotly-239120?style=for-the-badge&logo=plotly&logoColor=white)
<br>

## 1. Overview
This Python-based data science project aims to analyze transportation mode choices through dimension reduction and clustering. Starting with data exploration and visualization, it identifies key variables and their distributions, alongside inter-variable relationships. Preprocessing includes standardization and PCA, aiming to capture 90% variance within fewer dimensions. It rigorously applies PCA to reduce dimensionality before utilizing K-Means and Gaussian Mixture Models (GMM) for clustering. Model performance is evaluated through accuracy and precision metrics, particularly focusing on the prediction of car travel mode. Both K-Means and GMM demonstrate distinct capabilities in identifying underlying patterns, with GMM showing superior generalization possibly due to its flexibility in capturing non-spherical cluster shapes.


## 2. Skills and Techniques Demonstrated in the Project
| Skill/Technique                     | Description |
|-------------------------------------|-------------|
| Data Exploration and Visualization  | Used pandas, numpy, matplotlib, and seaborn for initial data analysis and visualization to identify data characteristics and preprocessing needs. |
| Dimensionality Reduction            | Applied PCA to reduce dataset dimensionality while retaining 90% of the variance, showcasing skill in simplifying datasets for analysis. |
| Data Preprocessing and Standardization | Standardized the dataset using sklearn's StandardScaler, preparing data for effective PCA and clustering application. |
| PCA Analysis and Interpretation     | Conducted PCA, analyzed variance ratios, and interpreted principal components, demonstrating ability to derive insights from reduced dimensions. |
| Clustering with K-Means             | Implemented K-Means clustering to identify distinct groups based on travel mode, highlighting proficiency in unsupervised learning algorithms. |
| Clustering with Gaussian Mixture Models | Utilized GMM for clustering, taking advantage of its capability to handle complex cluster shapes and distributions. |
| Model Evaluation                    | Evaluated clustering models using accuracy and precision scores, emphasizing a focus on model performance and validation. |
| Logistic Regression                 | Applied Logistic Regression to validate the sufficiency of principal components, underlining skills in supervised learning and model assessment. |
