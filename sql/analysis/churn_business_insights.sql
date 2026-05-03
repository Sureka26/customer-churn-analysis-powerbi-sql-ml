USE telecom_churn_analytics;
SELECT 
    CASE 
        WHEN Tenure_in_Months < 12 THEN 'New'
        WHEN Tenure_in_Months BETWEEN 12 AND 24 THEN 'Mid'
        ELSE 'Loyal'
    END AS Segment,
    SUM(Total_Revenue) AS Revenue_Loss
FROM prod_Churn
WHERE Customer_Status = 'Churned'
GROUP BY 
    CASE 
        WHEN Tenure_in_Months < 12 THEN 'New'
        WHEN Tenure_in_Months BETWEEN 12 AND 24 THEN 'Mid'
        ELSE 'Loyal'
    END
ORDER BY Revenue_Loss DESC;

SELECT 
    Customer_ID,
    Tenure_in_Months,
    Monthly_Charge,
    Total_Revenue
FROM prod_Churn
WHERE Customer_Status = 'Stayed'
AND Tenure_in_Months < 12
AND Monthly_Charge > 80;

SELECT 
    Internet_Type,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) AS Churned,
    SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS Churn_Rate
FROM prod_Churn
GROUP BY Internet_Type
ORDER BY Churn_Rate DESC;

SELECT 
    Contract,
    SUM(Total_Revenue) AS Revenue_Loss
FROM prod_Churn
WHERE Customer_Status = 'Churned'
GROUP BY Contract
ORDER BY Revenue_Loss DESC;

SELECT 
    Payment_Method,
    COUNT(*) AS Total,
    SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) AS Churned
FROM prod_Churn
GROUP BY Payment_Method
ORDER BY Churned DESC;

SELECT 
    SUM(Total_Revenue) AS Retention_Value
FROM prod_Churn
WHERE Customer_Status = 'Stayed'
AND Tenure_in_Months < 12
AND Monthly_Charge > 80;

SELECT 
    Churn_Category,
    Churn_Reason,
    COUNT(*) AS Total_Churn
FROM prod_Churn
WHERE Customer_Status = 'Churned'
GROUP BY Churn_Category, Churn_Reason
ORDER BY Total_Churn DESC;
