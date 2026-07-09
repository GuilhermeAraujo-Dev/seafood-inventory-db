# Seafood Inventory Database 🐟📦

A relational database project designed to manage the inventory, products, and international suppliers for a seafood import/export operation. This project demonstrates core SQL modeling concepts, data integrity, and business intelligence queries.

## ⚙️ Core Concepts Applied
* **Relational Modeling:** 1:N and 1:1 relationships using Foreign Keys.
* **Data Integrity:** Implementation of `UNIQUE`, `NOT NULL`, and constraints like `ON DELETE RESTRICT` to prevent orphaned records and `ON DELETE CASCADE` for automated inventory cleanup.
* **Business Intelligence (BI) Queries:** Utilizing `INNER JOIN`, `GROUP BY`, and mathematical aggregations to generate management reports.

## 📂 Project Structure

* `schema.sql`: Contains the DDL (Data Definition Language) to create the tables (`tb_supplier`, `tb_product`, `tb_inventory`) and define relationships.
* `data.sql`: Contains the DML (Data Manipulation Language) to seed the database with mock international suppliers, seafood products, and stock levels in kilograms.
* `queries.sql`: A collection of essential business queries, including:
  * Supplier and product cross-referencing.
  * Total financial value calculation of the current inventory.
  * Stock grouping by warehouse sector.
  * Low stock alerts for purchasing decisions.

## 🚀 How to Run

1. Clone this repository:
```bash
git clone https://github.com/GuilhermeAraujo-Dev/seafood-inventory-db.git
```
2. Open your preferred SQL client (e.g., DBeaver, pgAdmin, DataGrip).
3. Execute the `schema.sql` file first to build the database and tables.
4. Execute the `data.sql` file to populate the tables with mock data.
5. Run any of the commands in `queries.sql` to test the data extraction.

## 👨‍💻 Author
**Guilherme Araújo**
* GitHub: [View my profile](https://github.com/GuilhermeAraujo-Dev)