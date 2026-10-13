# Retail-sales-project-analysis
Retail sales project analysis
A comprehensive SQL-driven exploratory data analysis (EDA) and business intelligence project examining 2,000 retail transaction records across 2022 and 2023. The project identifies peak operational windows, customer spending concentration, product portfolio performance, and seasonality trends to formulate an actionable executive playbook.

📌 Project Overview

Understanding consumer purchasing behaviors, peak footfall shifts, and customer lifetime value is critical for optimizing retail operations and marketing return on investment (ROI).This repository models, queries, and evaluates a retail transactional database (retail_sales_project_analysis) using advanced SQL queries—including Common Table Expressions (CTEs), window functions (DENSE_RANK), conditional logic (CASE WHEN), and aggregations.   
Key Deliverables
SQL Query Pipeline: Clean, reproducible queries solving practical business questions.   
Executive Presentation Deck: An interactive HTML5 presentation deck designed for leadership decision-making.
Strategic Playbook: A 4-stage operational blueprint addressing inventory procurement, shift scheduling, and VIP retention.   

📊 Dataset Schema
The underlying dataset comprises retail sales records spanning from January 1, 2022, to December 31, 2023:Column NameData TypeDescriptiontransactions_idINTUnique record identifier for each transactionsale_dateDATEDate of the transaction (YYYY-MM-DD)sale_timeTIMETimestamp of sale completion (HH:MM:SS)customer_idINTUnique customer account numbergenderVARCHARCustomer gender (Male / Female)ageINTCustomer age in yearscategoryVARCHARMerchandise category (Clothing, Beauty, Electronics)quantiyINTTotal units purchased per orderprice_per_unitDECIMALRetail price charged per unitcogsDECIMALCost of goods sold per line itemtotal_saleDECIMALTotal order revenue (quantiy * price_per_unit)
💡 Key Business Insights
1. Evening Dominance & Operational Resource AllocationOver 53.1% of all transactions (1,062 orders) and ₹4,75,940 in sales occur during the Evening shift (after 5:00 PM).   Morning (pre-12:00 PM) accounts for 28.1%, while the Afternoon (12:00 PM – 5:00 PM) drops to an off-peak low of 18.9%.   Strategic Takeaway: Floor staffing, customer support, and restocking must pivot to late-afternoon and evening shifts to match natural traffic flows, while midday happy-hour promotions can help stimulate lagging afternoon volume.
2. High-Ticket Leverage & 80/20 VIP ConcentrationPremium Basket Dominance: Orders exceeding ₹1,000 make up only 15.3% of transaction volume (306 orders), yet generate 52.2% of gross revenue (₹4,75,600).   VIP Reliance: Out of 155 unique customers, the top 5 spenders (Customer IDs: 3, 1, 5, 2, and 4) contributed ₹1,48,470, representing 16.3% of all business revenue.   Strategic Takeaway: Dedicated VIP loyalty programs with tiered benefits above ₹1,000 produce higher margin stability than broad customer acquisition campaigns.
3. Balanced Category Revenue with Defined DemographicsEqual Portfolio Contribution: Total revenue is distributed evenly across lines:Electronics: ₹3,13,810 (34.4% revenue share)   Clothing: ₹3,11,070 (34.1% revenue share)   Beauty: ₹2,86,840 (31.5% revenue share)   Gender Preferences:Women generate higher revenue in Clothing (₹1,62,460) and Beauty (₹1,49,470).   Men represent the primary volume and revenue contributor in Electronics (₹1,60,340).   Target Audience: The customer base is middle-aged and financially mature, with average customer age sitting uniformly between 40 and 42 years across all categories.
4. Cyclical Q4 SeasonalitySales accelerate in Q3 and reach peak demand in December across both 2022 (₹72,880) and 2023 (₹69,145), driven by holiday demand.   
