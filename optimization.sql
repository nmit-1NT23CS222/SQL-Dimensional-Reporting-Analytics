USE dimensional_reporting_db;

-- 1. Analyze a query using EXPLAIN
EXPLAIN
SELECT *
FROM fact_sales
WHERE customer_id = 1;

-- 2. Create an index on revenue
CREATE INDEX idx_sales_revenue
ON fact_sales(revenue);

-- 3. Analyze customer revenue aggregation
EXPLAIN
SELECT
    customer_id,
    SUM(revenue) AS total_revenue
FROM fact_sales
GROUP BY customer_id;

-- 4. Analyze category-wise revenue
EXPLAIN
SELECT
    p.category,
    SUM(f.revenue) AS total_revenue
FROM fact_sales f
JOIN dim_product p
    ON f.product_id = p.product_id
WHERE p.category = 'Electronics'
GROUP BY p.category;

-- 5. Display indexes on the sales table
SHOW INDEX FROM fact_sales;

-- 6. Analyze sales from March 10, 2025 onwards
SELECT
    customer_id,
    SUM(revenue) AS total_revenue
FROM fact_sales
WHERE date_id >= 20250310
GROUP BY customer_id
ORDER BY total_revenue DESC;

-- 7. Analyze product-wise revenue query
EXPLAIN
SELECT
    p.product_name,
    SUM(f.revenue) AS total_revenue
FROM fact_sales f
JOIN dim_product p
    ON f.product_id = p.product_id
GROUP BY p.product_id, p.product_name;

-- 8. Display all indexes on the sales table
SHOW INDEX FROM fact_sales;
