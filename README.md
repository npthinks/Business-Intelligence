***Data Warehouse and ETL Project — Car Rental Analytics***

**Project Overview**
Built a data warehouse and analytics pipeline for a car rental dataset to uncover trends in customer preferences, fleet utilisation and revenue performance. The core business question driving the analysis was: what colour cars are rented most often, and how does that translate into revenue?
The goal was to move from raw transactional data to a clean, analytics-ready warehouse that business stakeholders could query and act on directly.

**Source OLTP Schema**
The source database consisted of four tables: Car, Rental, Customer and Rating. Cars were identified by Car_ID, rental transactions linked cars to customers via foreign keys, and the Rating table captured customer feedback tied to each rental. This formed the foundation for the ETL process.

**Data Warehouse Design**
Designed a snowflake schema dimensional warehouse with a central fact table, Facts_Rental, containing rental price as the core quantitative measure. Surrounding dimensions included Dimension_CustomerRental for demographic context, Dimension_Time for temporal trend analysis, Dimension_CarRental capturing car attributes including colour, and Dimension_RatingRental for customer satisfaction data.
This structure enabled efficient analysis of colour preferences across time periods, customer segments and revenue impact.

**Analysis and Insights**
Built a SQL view in MySQL to surface the most popular car colours by rental frequency and total revenue for 2020. Revenue was calculated by multiplying rental price per day by rental duration, aggregated by colour. Results showed that crimson was the most frequently rented colour in 2020, while turquoise generated the highest total revenue, an insight with direct implications for procurement, inventory planning and marketing strategy.

**Business Impact**
The analysis provided actionable intelligence for fleet composition decisions, procurement planning and customer experience strategy. By aligning inventory with demonstrated colour preferences across demographic and geographic segments, the findings support both operational efficiency and revenue growth.
