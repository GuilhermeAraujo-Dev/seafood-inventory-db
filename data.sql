-- Insert mock data into the supplier table
INSERT INTO tb_supplier (company_name, country_of_origin, contact_email) VALUES
('Nordic Seas Fisheries', 'Norway', 'contact@nordicseas.no'),
('Pacific Catch Corp', 'Chile', 'sales@pacificcatch.cl'),
('Pescados Ibericos', 'Spain', 'export@pescadosibericos.es');

-- Insert mock data into the product table
-- supplier_id 1 = Norway, 2 = Chile, 3 = Spain
INSERT INTO tb_product (name, species, category, unit_price, supplier_id) VALUES
('Premium Salmon Fillet', 'Salmo salar', 'Fish', 25.50, 1),
('Whole Atlantic Cod', 'Gadus morhua', 'Fish', 18.20, 1),
('Jumbo Pacific Shrimp', 'Litopenaeus vannamei', 'Crustacean', 32.00, 2),
('Chilean Sea Bass', 'Dissostichus eleginoides', 'Fish', 45.00, 2),
('Mediterranean Octopus', 'Octopus vulgaris', 'Mollusk', 28.50, 3);

-- Insert mock data into the inventory table
-- Links the product_id to a specific quantity and warehouse location
INSERT INTO tb_inventory (product_id, quantity_kg, warehouse_sector) VALUES
(1, 1500.00, 'Sector A - Frozen'),
(2, 850.50, 'Sector A - Frozen'),
(3, 300.00, 'Sector B - Chilled'),
(4, 120.00, 'Sector A - Frozen'),
(5, 500.00, 'Sector C - Deep Freeze');