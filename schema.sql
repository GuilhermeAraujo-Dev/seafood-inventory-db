-- Creates the database for the inventory system
CREATE DATABASE seafood_inventory;

-- IMPORTANT: Connect to the 'seafood_inventory' database in your SQL client before running the next commands.

-- Drops the table if it already exists to avoid errors during creation
DROP TABLE IF EXISTS tb_supplier;

-- Creates the supplier table to store partner companies information
CREATE TABLE tb_supplier (
    id SERIAL PRIMARY KEY,
    company_name VARCHAR(100) NOT NULL,
    country_of_origin VARCHAR(50) NOT NULL,
    contact_email VARCHAR(100) UNIQUE,
    registration_date DATE DEFAULT CURRENT_DATE
);