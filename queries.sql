-- 1. List all products with their respective supplier names and origins (INNER JOIN)
SELECT
    p.name AS product_name,
    p.category,
    s.company_name AS supplier,
    s.country_of_origin
FROM tb_product p
INNER JOIN tb_supplier s on p.supplier_id = s.id;

-- 2. Calculate the total financial value of the current inventory per product (Math & JOIN)
SELECT
    p.name AS product_name,
    i.quantity_kg,
    p.unit_price,
    (i.quantity_kg * p.unit_price) AS total_value_usd
FROM tb_inventory i
INNER JOIN tb_product p ON i.product_id = p.id
ORDER BY total_value_usd DESC;

-- 3. Show total quantity of seafood stored per warehouse sector (GROUP BY & Aggregation)
SELECT
    warehouse_sector,
    SUM(quantity_kg) AS total_kg_stored
FROM tb_inventory
GROUP BY warehouse_sector;

-- 4. Identify products with low stock (below 200 kg) for purchasing alerts (Multiple JOINs & Filtering)
SELECT
    p.name AS product_name,
    i.quantity_kg,
    s.contact_email AS supplier_email
FROM tb_inventory i
INNER JOIN tb_product p ON i.product_id = p.id
INNER JOIN tb_supplier s on p.supplier_id = s.id
WHERE i.quantity_kg < 200.00;