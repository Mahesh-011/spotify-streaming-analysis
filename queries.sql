select *
from bank_transactions ;

# Check for missing values
SELECT COUNT(*) FROM bank_transactions 
WHERE TransactionID IS NULL 
   OR CustomerID IS NULL 
   OR CustomerDOB IS NULL
   OR CustGender IS NULL 
   OR CustLocation IS NULL 
   OR CustAccountBalance IS NULL 
   OR TransactionDate IS NULL 
   OR TransactionTime IS NULL 
   OR `TransactionAmount (INR)` IS NULL;

#TOTAL REVENUE
SELECT SUM(`TransactionAmount (INR)`) as total_revenue
FROM bank_transactions;

# MONTHLY CUSTOMER SPENDING TRENDS.
SELECT DATE_FORMAT(transactiondateformatted,'%Y-%m') AS Month, 
       SUM(`TransactionAmount (INR)`) AS Total_Revenue 
FROM bank_transactions
GROUP BY Month 
ORDER BY Month;

#TOTAL NO.OF CUSTOMERS
SELECT COUNT(CustomerID) as total_customers
from bank_transactions; 

#TOP 5 HIGH PAYING CUSTOMERS
SELECT CustomerID,SUM(`TransactionAmount (INR)`) AS total_revenue
FROM bank_transactions
GROUP BY CustomerID
ORDER BY total_revenue DESC
LIMIT 5;

#CUSTOMER ACCOUNT BALANCE INSIGHTS.
SELECT CustomerID, 
       CustAccountBalance, 
       CASE 
           WHEN CustAccountBalance > 50000 THEN 'High Balance'
           WHEN CustAccountBalance BETWEEN 10000 AND 50000 THEN 'Medium Balance'
           ELSE 'Low Balance'
       END AS Balance_Category
FROM bank_transactions;

# TOP 5 CITIES WITH HIGHEST REVENUE.
SELECT CustLocation, 
       COUNT(CustomerID) AS Total_Customers, 
       SUM(`TransactionAmount (INR)`) AS Total_Spending 
FROM bank_transactions 
GROUP BY CustLocation 
ORDER BY Total_Spending DESC
LIMIT 5;

#Customer Demographics (Gender-Based Spending)
SELECT CustGender, 
       COUNT(CustomerID) AS Total_Customers, 
       SUM(`TransactionAmount (INR)`) AS Total_Spent 
FROM bank_transactions 
GROUP BY CustGender;

#Segmenting Customers Based on Spending Patterns
WITH Spending AS (
    SELECT CustomerID, 
           SUM(`TransactionAmount (INR)`) AS Total_Spent, 
           NTILE(3) OVER (ORDER BY SUM(`TransactionAmount (INR)`) DESC) AS Spending_Segment
    FROM bank_transactions 
    GROUP BY CustomerID
)
SELECT CustomerID, 
       Total_Spent, 
       CASE 
           WHEN Spending_Segment = 1 THEN 'High Spender'
           WHEN Spending_Segment = 2 THEN 'Medium Spender'
           ELSE 'Low Spender'
       END AS Customer_Segment
FROM Spending;

#Average Transaction Amount per Customer
SELECT CustomerID, 
       AVG(`TransactionAmount (INR)`) AS Avg_Transaction_Amount 
FROM bank_transactions 
GROUP BY CustomerID 
ORDER BY Avg_Transaction_Amount DESC
limit 10;

# Identifying Customers with High Transaction Frequency
SELECT CustomerID, 
       COUNT(TransactionID) AS Transaction_Count 
FROM bank_transactions 
GROUP BY CustomerID 
ORDER BY Transaction_Count DESC 
LIMIT 10;
