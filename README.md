🍕 Pizza Sales Analytics Dashboard
End-to-End Data Analytics Project (SQL Server + Power BI)
📌 Executive Summary
This project transforms raw pizza sales transactions into a strategic revenue intelligence dashboard.
Using SQL Server for enterprise-grade data cleaning and transformation and Power BI for modeling and visualization, the solution delivers actionable insights for revenue growth, product optimization, and operational efficiency.
Performance Snapshot:
Total Revenue: ~$801K
Total Orders: ~21K
Total Pizzas Sold: ~50K
Best Seller: Thai Chicken Pizza
Top Category: Veggie (~52% revenue share)
Peak Hour: 12 PM
This is not just a reporting dashboard — it is a decision-support tool for revenue optimization.

🎯 Business Questions Answered
What drives total revenue and order performance?
Which pizzas and categories generate the most value?
What products are underperforming?
When is demand at its peak?
Where are optimization opportunities?

🛠 Technical Approach
1️⃣ Data Preparation — SQL Server
SQL Server was used to ensure data reliability and performance:
Data cleaning and validation
Null handling & deduplication
Revenue calculations
Feature engineering (hour extraction, category mapping)
Business rule validation
This preprocessing reduced model complexity and ensured an analysis-ready dataset.

2️⃣ Modeling & Visualization — Power BI
Star schema data model
Optimized relationships
Business-driven DAX measures
Interactive executive dashboard

🧮 Core DAX Measures
Total Revenue = SUM(Sales[TotalPrice])
Total Orders = DISTINCTCOUNT(Sales[OrderID])
Total Pizzas Sold = SUM(Sales[Quantity])
Average Order Value = DIVIDE([Total Revenue], [Total Orders])
Revenue % by Category =
DIVIDE(
    [Total Revenue],
    CALCULATE([Total Revenue], ALL(Sales[Category]))
)
📊 Dashboard Sections
🔹 KPI Overview
Revenue, Orders, Pizzas Sold, AOV

📷 Screenshot Placeholder – KPI Overview
🔹 Category & Revenue Breakdown
The veggie category contributes ~52% of revenue
Revenue distribution by product category

📷 Screenshot Placeholder – Category Analysis
🔹 Top & Bottom Product Analysis
Thai Chicken Pizza identified as top performer
Bottom 5 underperforming pizzas highlighted for optimization

📷 Screenshot Placeholder – Product Performance
🔹 Peak Hour Insights
12 PM is identified as the highest demand period
Supports staffing and promotional strategy
📷 Screenshot Placeholder – Hourly Sales

📂 Project Structure
Pizza-Sales-Analytics/
│
├── SQL/
│   ├── Data_Cleaning.sql
│   └── Feature_Engineering.sql
│
├── PowerBI/
│   └── Pizza_Sales_Dashboard.pbix
│
├── Dataset/
│   └── pizza_sales_raw.csv
│
└── README.md
📈 Key Insights & Business Impact
Revenue concentration in the Veggie category suggests growth potential but also dependency risk.
Clear identification of underperforming products enables menu optimization
Peak-hour analysis supports operational planning
Best-seller analysis enables targeted upselling strategies

🚀 Growth Recommendations
Optimize pricing of best-selling products
Reposition or removethe  bottom 5 pizzas
Launch targeted lunch promotions around peak hour
Expand high-performing product categories
Implement upselling strategies during peak demand

🧰 Tech Stack
SQL Server (T-SQL) – Data cleaning & transformation
Power BI – Data modeling & visualization
DAX – Business KPI calculations



💼 Why This Project Stands Out
This project demonstrates:
Strong SQL-based data preparation
Structured BI modeling approach
Business-first dashboard design
Ability to translate raw data into a revenue strategy
An end-to-end analytics solution built with both technical depth and commercial impact in mind.
