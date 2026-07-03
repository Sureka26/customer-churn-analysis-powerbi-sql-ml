**Customer Churn Analysis & Retention Strategy**
> End-to-End Data Analytics Project using SQL, Power BI & Machine Learning
> to identify customer churn and drive retention strategies

## Short Description 
End-to-End Data Analytics Project using SQL, Power BI & Machine Learning to identify customer churn and drive retention strategies.

## Project Highlights
- End-to-end data analytics pipeline (SQL → Power BI → ML)
- Built predictive churn model with 84% accuracy
- Identified key business drivers influencing customer churn
- Designed interactive dashboards for decision-making
- Provided actionable retention strategies

## Project Overview

Customer churn is a major business challenge that directly affects revenue, profitability, and customer lifetime value.

This end-to-end analytics project uses SQL, Power BI, and Machine Learning to:

- Analyze customer behavior
- Identify churn patterns and business drivers
- Predict customers at high risk of churning
- Support data-driven retention strategies
- Deliver actionable business insights through interactive dashboards

## Business Problem

Customer churn is one of the biggest challenges for subscription-based businesses because acquiring a new customer is significantly more expensive than retaining an existing one. High churn rates lead to revenue loss, reduced customer lifetime value, and increased marketing costs.

Business stakeholders need to identify customers who are likely to churn, understand the factors influencing churn, and implement proactive retention strategies to improve customer loyalty and business growth.

This project addresses these challenges by combining SQL, Power BI, and Machine Learning to analyze customer behavior, predict churn risk, and generate actionable business recommendations.

## Business Questions
- Which customer segments are most likely to churn?
- What are the primary reasons and business factors driving customer churn?
- Which customer groups contribute the highest revenue risk?
- How accurately can machine learning identify customers at risk of churning?
- What retention strategies can reduce churn and improve customer lifetime value?

## Project Objectives
a) Analyze customer behavior across:
- Demographics
- Geography
- Services
- Billing & payment

b) Identify:
- Who is churning
- Why they are churning

c) Measure:
- Revenue loss
- High-value churn
  
d) Segment customers:
- Tenure-based
- Value-based
- Risk-based
  
e) Predict future churn using Machine Learning

## Dataset Information

- Dataset Name: Telecom Customer Churn Dataset
- Domain: Telecommunications
- Format: CSV
- Total Records: 6,418
- Total Columns: 34
- Data Type: Structured Customer Data

## Project Workflow
1. Data Collection (CSV dataset)
2. Data Cleaning & Transformation (SQL)
3. Exploratory Data Analysis (SQL)
4. Dashboard Development (Power BI)
5. Machine Learning Model (Python)
6. Prediction & Business Insights

## Tech Stack
- SQL Server – Data Cleaning, Transformation, Exploratory Data Analysis
- Power BI – Interactive Dashboard & Visualization
- Python (Scikit-learn) – Predictive Modeling using Random Forset
- Excel / CSV – Data Source

## SQL Concepts Used

- Data Cleaning & Transformation
- Aggregate Functions
- GROUP BY
- CASE Statements
- JOINs
- Common Table Expressions (CTEs)
- Window Functions
- Views
- Stored Procedures
- Subqueries
- NULL Handling

## Key Business Insights
### 1. Contract Type Drives Churn
- Month-to-month customers show the highest churn.
- Long-term contracts significantly reduce churn
### 2. Pricing Impact
- High monthly charges → higher churn probability
- Customers are price-sensitive
### 3. Tenure Effect
- New customers churn more frequently
- Long-term customers are more stable
### 4. Payment Method Influence
- Electronic payment users show higher churn
### 5. Service Usage Behavior
- Internet and streaming services impact churn
- Add-on services influence retention
### 6. Revenue Risk
- High-value customers are also churning
- Indicates potential revenue leakage

## Machine Learning Model

### Model Used

- Random Forest Classifier

### Data Processing

- Removed unnecessary columns
- Encoded categorical variables

Target Variable:
- Stayed → 0
- Churned → 1

### Model Performance

- Accuracy: ~84%
- Precision: 0.80
- Recall: 0.59
- F1 Score: 0.68

The model is slightly biased toward the non-churn class and could be improved by increasing recall to better identify customers at risk of churning.

## Key Features Driving Churn
- Contract Type
- Total Charges
- Monthly Charges
- Tenure
- Total Revenue

## Prediction Output
- Predicts high-risk customers
- Filters churn-prone users
- Exports prediction results as a CSV file for business use

## Business Recommendations
###  1. Promote Long-Term Contracts
- Offer discounts for yearly plans
###  2. Pricing Optimization
- Provide personalized offers for high-risk users
###  3. Early Retention Strategy
- Focus on customers in the first 3–6 months.
###  4. Protect High-Value Customers
- Introduce loyalty programs
###  5. Payment-Based Targeting
- Target customers using electronic payment methods
###  6. AI-Driven Retention
- Use ML predictions to trigger retention campaigns

## Dashboard Preview

### Summary Dashboard
<img width="643" height="358" alt="Screenshot 2026-05-03 155313" src="https://github.com/user-attachments/assets/6750584a-5bac-4e3c-9bf5-cfc0098200a6" />


### Churn Analysis Dashboard
<img width="632" height="353" alt="Screenshot 2026-05-03 155351" src="https://github.com/user-attachments/assets/1e9e203b-bbec-4108-8111-e593d32fd467" />


### Prediction Dashboard
<img width="640" height="357" alt="Screenshot 2026-05-03 155329" src="https://github.com/user-attachments/assets/b8214e0b-f7af-48f4-a646-f5c2ee58e04a" />

## Business Impact

The insights and predictive model developed in this project can help telecom businesses:

- Reduce customer churn through targeted retention campaigns
- Prioritize high-value customers for proactive engagement
- Optimize pricing and contract strategies
- Improve customer lifetime value through data-driven decisions
- Support business teams with predictive analytics for retention planning

## Conclusion

This project demonstrates how SQL, Power BI, and Machine Learning can be combined to solve a real-world customer churn problem. By identifying churn drivers, predicting at-risk customers, and providing actionable retention strategies, the analysis enables businesses to reduce revenue loss, improve customer loyalty, and make informed, data-driven decisions.

## Author
**Sureka R**
Aspiring Data Analyst.

Skills: SQL | Power BI | Python.
Focus: Business Analytics & Machine Learning.

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue)](https://www.linkedin.com/in/sureka26)
