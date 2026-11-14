USE ecommerce_portfolio;
-- 1. Reconciliation: expected 120 rows, 99 Completed, BDT 1,459,250 completed sales,
-- BDT 425,730 completed profit.
SELECT COUNT(*) AS total_rows,
 SUM(status='Completed') AS completed_rows,
 SUM(status='Pending') AS pending_rows,
 SUM(status='Refunded') AS refunded_rows,
 SUM(gross_sales_bdt) AS gross_order_value_bdt,
 SUM(completed_sales_bdt) AS completed_sales_bdt,
 SUM(completed_cogs_bdt) AS completed_cogs_bdt,
 SUM(completed_profit_bdt) AS completed_profit_bdt,
 ROUND(100*SUM(completed_profit_bdt)/NULLIF(SUM(completed_sales_bdt),0),2) AS completed_margin_pct
FROM sales;

-- 2. Monthly trend
SELECT order_month, COUNT(*) AS order_lines,
 SUM(completed_sales_bdt) AS completed_sales_bdt,
 SUM(completed_profit_bdt) AS completed_profit_bdt
FROM sales GROUP BY order_month ORDER BY order_month;

-- 3. Product category performance
SELECT category, SUM(status='Completed') AS completed_orders,
 SUM(completed_sales_bdt) AS completed_sales_bdt,
 SUM(completed_profit_bdt) AS completed_profit_bdt,
 ROUND(100*SUM(completed_profit_bdt)/NULLIF(SUM(completed_sales_bdt),0),2) AS margin_pct
FROM sales GROUP BY category ORDER BY completed_sales_bdt DESC;

-- 4. Region performance
SELECT region, SUM(completed_sales_bdt) AS completed_sales_bdt,
 SUM(completed_profit_bdt) AS completed_profit_bdt
FROM sales GROUP BY region ORDER BY completed_sales_bdt DESC;

-- 5. Sales channel performance
SELECT channel, COUNT(*) AS all_order_lines,
 SUM(status='Completed') AS completed_orders,
 SUM(completed_sales_bdt) AS completed_sales_bdt,
 SUM(completed_profit_bdt) AS completed_profit_bdt,
 ROUND(100*SUM(completed_profit_bdt)/NULLIF(SUM(completed_sales_bdt),0),2) AS margin_pct
FROM sales GROUP BY channel ORDER BY completed_sales_bdt DESC;

-- 6. Top products
SELECT product_id, product, SUM(completed_sales_bdt) AS completed_sales_bdt,
 SUM(completed_profit_bdt) AS completed_profit_bdt
FROM sales GROUP BY product_id,product ORDER BY completed_sales_bdt DESC LIMIT 10;

-- 7. Status mix (not an accounting refund analysis)
SELECT status, COUNT(*) AS order_lines, SUM(gross_sales_bdt) AS gross_order_value_bdt
FROM sales GROUP BY status ORDER BY order_lines DESC;

-- 8. Quality checks
SELECT SUM(quantity<=0) AS invalid_quantity,
 SUM(unit_price_bdt<0 OR unit_cost_bdt<0) AS negative_price_or_cost,
 COUNT(*)-COUNT(DISTINCT order_id) AS duplicate_order_ids
FROM sales;
