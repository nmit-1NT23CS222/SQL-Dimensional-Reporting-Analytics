# SQL Dimensional Reporting & Analytics System

## Project Overview

The SQL Dimensional Reporting & Analytics System is a database project that demonstrates dimensional modeling and advanced SQL analytics using MySQL.

The project uses a **Star Schema** to analyze sales transactions and generate business reports using SQL queries.

## Technologies Used

* MySQL 8.0+
* SQL
* MySQL Workbench
* Git and GitHub

## Project Objectives

* Design a Star Schema for sales analytics.
* Create fact and dimension tables.
* Store and analyze sample sales data.
* Calculate total revenue and customer spending.
* Rank products and customers using window functions.
* Generate Month-over-Month revenue reports.
* Calculate running totals using window functions.
* Generate subtotals and grand totals using ROLLUP.
* Analyze query execution plans using EXPLAIN.
* Demonstrate indexing and basic query optimization.

## Database Design

The database contains one fact table and four dimension tables.

### 1. fact_sales

Stores sales transactions, including quantity, unit price, discount, and revenue.

### 2. dim_customer

Stores customer names, gender, and customer segments.

### 3. dim_product

Stores product names, categories, brands, and prices.

### 4. dim_date

Stores dates, days, months, quarters, and years.

### 5. dim_location

Stores city, state, and regional information.

## Star Schema

```text
                 dim_customer
                      |
                      |
dim_product ---- fact_sales ---- dim_date
                      |
                      |
                dim_location
```

## SQL Concepts Implemented

### Basic Analytics

* Total revenue calculation
* Product-wise revenue
* Category-wise revenue
* Customer-wise spending
* Region-wise revenue
* Revenue by customer segment

### Advanced SQL

* RANK()
* DENSE_RANK()
* LAG()
* LEAD()
* NTILE()
* Common Table Expressions (CTEs)
* Running totals
* Month-over-Month revenue comparison
* ROLLUP for subtotals and grand totals

### Query Optimization

* EXPLAIN for execution-plan analysis
* Index creation
* SHOW INDEX for index inspection
* Filtering and aggregation analysis

## Project Structure

```text
sql-week5-dimensional-report/
│
├── schema.sql
├── data.sql
├── dimensional_queries.sql
├── optimization.sql
├── README.md
└── .gitignore
```

## How to Run the Project

### Prerequisites

1. Install MySQL Server 8.0 or later.
2. Install MySQL Workbench.
3. Clone or download this GitHub repository.

### Execution Steps

Open MySQL Workbench and connect to your MySQL Server.

Execute the SQL files in the following order:

**Step 1:** Run `schema.sql` to create the database, tables, relationships, constraints, and initial indexes.

**Step 2:** Run `data.sql` to insert sample customers, products, dates, locations, and sales transactions.

**Step 3:** Run `dimensional_queries.sql` to execute the analytical queries and generate sales reports.

**Step 4:** Run `optimization.sql` to examine query execution plans and demonstrate indexing.

Execute each file in MySQL Workbench and review the result grids and execution-plan output.

## Sample Dataset

The project includes sample data containing:

* 6 customers
* 6 products
* 12 calendar dates
* 4 locations
* 12 sales transactions

The dataset represents sales from January to June 2025.

## Expected Outcomes

After running the project, users can analyze:

* Overall sales revenue
* Product and category performance
* Customer spending patterns
* Monthly revenue changes
* Product and customer rankings
* Regional sales performance
* Running revenue totals
* Query execution plans and indexes

## Learning Outcomes

This project demonstrates practical understanding of:

* Relational database design
* Dimensional modeling
* Star Schema architecture
* Fact and dimension tables
* SQL joins and aggregations
* Advanced window functions
* CTEs and analytical reporting
* ROLLUP operations
* Indexing and query optimization

## GitHub Repository

This repository contains the SQL scripts required to recreate the database and execute the analytical queries.

The actual MySQL database is not stored on GitHub. It can be recreated by running the provided SQL files in the specified order.

## Author

Created as a SQ
