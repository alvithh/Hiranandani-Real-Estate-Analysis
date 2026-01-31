#Previewing Data
SELECT * FROM hirandhani_estate.hiranandani_estate_clean_dataset;
#Checking Null values
SELECT 
    COUNT(*) - COUNT(Customer_Name) AS missing_names,
    COUNT(*) - COUNT(Purchase_Price_Lakhs) AS missing_price
FROM  hirandhani_estate.hiranandani_estate_clean_dataset;
#Convert Empty selling price to Null
UPDATE hirandhani_estate.hiranandani_estate_clean_dataset
SET Selling_Price_Lakhs = NULL
WHERE Selling_Price_Lakhs = '';
#Standardizing Text
UPDATE  hirandhani_estate.hiranandani_estate_clean_dataset
SET City = UPPER(City),
    Property_Type = UPPER(Property_Type);
#Profit column
ALTER TABLE  hirandhani_estate.hiranandani_estate_clean_dataset
ADD Profit_Lakhs DECIMAL(10,2);
#Creating Profit Lakhs column
UPDATE hirandhani_estate.hiranandani_estate_clean_dataset
SET Profit_Lakhs = Selling_Price_Lakhs - Purchase_Price_Lakhs;
#Avg Price by BHK
SELECT BHK, ROUND(AVG(Purchase_Price_Lakhs),2) AS Avg_Price
FROM hirandhani_estate.hiranandani_estate_clean_dataset
GROUP BY BHK;
#Top Selling Agents
SELECT Agent_Name, COUNT(*) AS Deals
FROM hirandhani_estate.hiranandani_estate_clean_dataset
GROUP BY Agent_Name
ORDER BY Deals DESC;
#Profit Anaysis 
SELECT Property_Type,
       ROUND(AVG(Profit_Lakhs),2) AS Avg_Profit
FROM  hirandhani_estate.hiranandani_estate_clean_dataset
WHERE Transaction_Type = 'Sell'
GROUP BY Property_Type;
#Year wise sales Trend
SELECT 
    YEAR(Transaction_Date) AS Year,
    COUNT(*) AS Transactions,
    SUM(Purchase_Price_Lakhs) AS Total_Value
FROM  hirandhani_estate.hiranandani_estate_clean_dataset
GROUP BY Year
ORDER BY Year;
#Creating View
CREATE VIEW real_estate_dashboard AS
SELECT
    City,
    Property_Type,
    BHK,
    Purchase_Price_Lakhs,
    Selling_Price_Lakhs,
    Profit_Lakhs,
    Transaction_Date
FROM hirandhani_estate.hiranandani_estate_clean_dataset;
