SELECT 
    Customer_ID,
    Total_Revenue,
    RANK() OVER (ORDER BY Total_Revenue DESC) AS Revenue_Rank
FROM prod_Churn;

SELECT TOP 10 
    Customer_ID,
    Total_Revenue,
    Tenure_in_Months
FROM prod_Churn
WHERE Customer_Status = 'Churned'
ORDER BY Total_Revenue DESC;

WITH contract_data AS (
    SELECT 
        Contract,
        COUNT(*) AS Total_Customers,
        SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) AS Churned
    FROM prod_Churn
    GROUP BY Contract
)
SELECT *,
    Churned * 100.0 / Total_Customers AS Churn_Rate
FROM contract_data;

SELECT 
    Customer_ID,
    Tenure_in_Months,
    Monthly_Charge,
    CASE 
        WHEN Tenure_in_Months < 6 AND Monthly_Charge > 80 THEN 'High Risk'
        WHEN Tenure_in_Months < 12 THEN 'Medium Risk'
        ELSE 'Low Risk'
    END AS Risk_Level
FROM prod_Churn;

SELECT 
    Customer_ID,
    Total_Revenue,
    SUM(Total_Revenue) OVER (ORDER BY Total_Revenue DESC) AS Running_Revenue
FROM prod_Churn;

SELECT 
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Customer_Status='Churned' THEN 1 ELSE 0 END) AS Total_Churn,
    SUM(CASE WHEN Customer_Status='Churned' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS Churn_Rate,
    AVG(Monthly_Charge) AS Avg_Monthly_Charge,
    SUM(Total_Revenue) / COUNT(*) AS ARPU
FROM prod_Churn;
