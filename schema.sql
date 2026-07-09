-- Creates the database for the inventory system
CREATE DATABASE seafood_inventory;

-- IMPORTANT: Connect to the 'seafood_inventory' database in your SQL client before running the next commands.

-- Drops tables in reverse order of creation to respect foreign key constraints
DROP TABLE IF EXISTS tb_inventory;
DROP TABLE IF EXISTS tb_product;
DROP TABLE IF EXISTS tb_supplier;

-- Creates the supplier table to store partner companies information
CREATE TABLE tb_supplier (
    id SERIAL PRIMARY KEY,
    company_name VARCHAR(100) NOT NULL,
    country_of_origin VARCHAR(50) NOT NULL,
    contact_email VARCHAR(100) UNIQUE,
    registration_date DATE DEFAULT CURRENT_DATE
);

-- Creates the product table to store seafood details
CREATE TABLE tb_product (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    species VARCHAR(100),
    category VARCHAR(50) NOT NULL,
    supplier_id INT NOT NULL,
    FOREIGN KEY (supplier_id) REFERENCES tb_supplier(id) ON DELETE RESTRICT
);

-- Creates the inventory table to track stock levels in kilograms
CREATE TABLE tb_inventory (
    id SERIAL PRIMARY KEY,
    product_id INT UNIQUE NOT NULL,
    quantity_kg DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
    warehouse_sector VARCHAR(50) NOT NULL,
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (product_id) REFERENCES tb_product(id) ON DELETE CASCADE
);