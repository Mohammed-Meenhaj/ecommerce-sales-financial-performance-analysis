-- Run in MySQL Workbench. MySQL 8+
CREATE DATABASE IF NOT EXISTS ecommerce_portfolio CHARACTER SET utf8mb4;
USE ecommerce_portfolio;
CREATE TABLE IF NOT EXISTS sales (
 order_id VARCHAR(30) PRIMARY KEY,
 order_date DATE NOT NULL,
 product_id VARCHAR(30) NOT NULL,
 product VARCHAR(150) NOT NULL,
 category VARCHAR(100) NOT NULL,
 region VARCHAR(100) NOT NULL,
 channel VARCHAR(100) NOT NULL,
 quantity INT NOT NULL,
 unit_price_bdt DECIMAL(14,2) NOT NULL,
 unit_cost_bdt DECIMAL(14,2) NOT NULL,
 status VARCHAR(30) NOT NULL,
 order_month CHAR(7) NOT NULL,
 gross_sales_bdt DECIMAL(16,2) NOT NULL,
 cogs_bdt DECIMAL(16,2) NOT NULL,
 gross_profit_bdt DECIMAL(16,2) NOT NULL,
 completed_sales_bdt DECIMAL(16,2) NOT NULL,
 completed_cogs_bdt DECIMAL(16,2) NOT NULL,
 completed_profit_bdt DECIMAL(16,2) NOT NULL,
 CONSTRAINT chk_quantity CHECK (quantity > 0),
 CONSTRAINT chk_price CHECK (unit_price_bdt >= 0 AND unit_cost_bdt >= 0),
 CONSTRAINT chk_status CHECK (status IN ('Completed','Pending','Refunded'))
);
-- In MySQL Workbench, use the Table Data Import Wizard on ecommerce_portfolio.sales.
-- Select ../data/ecommerce_sales_mysql.csv and map columns by header.
-- Import once into an empty demo table. The primary key prevents duplicate order IDs.
