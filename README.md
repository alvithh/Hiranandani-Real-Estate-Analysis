# Hiranandani-Real-Estate-Analysis
End-to-end data analysis using SQL and Power BI

## 🔍 Project Overview

This project performs an end-to-end data analysis on real estate transactions from **Hiranandani Estate** to uncover insights related to selling prices, purchase prices, profitability, and sales trends. The analysis is carried out using **MySQL** for data preparation and **Power BI** for interactive visualization.

This project is designed to demonstrate practical **data analyst skills** expected in mid-cap company interviews.

## 🛠 Tools & Technologies

* **MySQL Workbench** – Data cleaning, transformation, and analysis
* **Power BI** – Dashboard creation and visual analytics
* **Microsoft Excel / CSV** – Raw dataset handling
* **GitHub** – Version control and project documentation

## 📁 Project Structure

```
Hiranandani-Real-Estate-Analysis/
│
├── data/
│   └── Hiranandani_Estate_Clean_Dataset.csv
│
├── sql/
│   ├── table_creation.sql
│   ├── data_cleaning.sql
│   └── analysis_queries.sql
│
├── powerbi/
│   └── Real_Estate_Analysis.pbix
│
├── dashboard_screenshots/
│   └── overview.png
│
└── README.md
```



## 📊 Dataset Description

* Real estate transaction-level data
* Includes selling price, purchase price, property type, BHK, city, agent, and transaction date
* Data cleaned to handle null values, incorrect datatypes, and formatting issues

## 🧹 Data Cleaning & Preparation (SQL)

The following steps were performed in **MySQL**:

* Converted price columns from string to numeric format
* Handled missing and invalid values
* Standardized categorical columns (City, Property Type)
* Created calculated fields such as **Profit (in Lakhs)**
* Ensured correct datatypes for analytical accuracy

## 📈 Key Analysis Performed

* Purchase vs Selling price comparison
* Profit analysis by property type and BHK
* City-wise sales performance
* Agent-wise performance evaluation
* Time-based sales and purchase trends

## 📊 Power BI Dashboard Features

* KPI cards for Total Sales, Total Purchase, and Total Profit
* Line charts for trend analysis
* Bar charts for property and city performance
* Filters for City, Property Type, BHK, and Year
* Clean and interview-ready layout

## 💡 Business Insights

* Certain BHK configurations generate higher profit margins
* Premium property types contribute more to overall revenue
* Sales performance varies significantly across cities and agents
* Trend analysis helps identify peak transaction periods

## 🎯 Key Learnings

* Practical use of SQL for real-world data cleaning
* Importance of correct datatypes in analytics
* Building business-focused dashboards in Power BI
* Structuring projects professionally for GitHub

## 🚀 Future Improvements

* Add predictive analysis for price forecasting
* Integrate additional datasets (market rates, location demand)
* Automate data refresh in Power BI
  
## 👤 Author

**Alvith Olivera**
Aspiring Data Analyst | SQL | Power BI | Data Visualization

⭐ If you found this project useful, feel free to star the repository!
