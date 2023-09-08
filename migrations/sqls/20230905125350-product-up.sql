CREATE TABLE IF NOT EXISTS product (
    id SERIAL PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    qr_code VARCHAR(50) NOT NULL,
    category_name VARCHAR(255) NOT NULL,
    product_description VARCHAR(500),
    supplier_name VARCHAR(255) NOT NULL,
    entity_meta_id INT NOT NULL,
    FOREIGN KEY (entity_meta_id) REFERENCES entity_meta(id)
);

INSERT INTO entity_meta (id, display_name, description, table_name, standalone, custom) VALUES
(14, 'Product', '', 'product', false, false);

-- Column: product_name
INSERT INTO column_meta (display_name, description, example, column_name, data_type, gen_opts_name, entity_meta_id) VALUES
('Product Name', '', 'Widget', 'product_name', 'varchar.255', 'entityVarchar', 14),
('Product Code', '', '1234567890', 'qr_code', 'varchar.50', 'entityVarchar', 14),
('Category Name', '', 'Electronics', 'category_name', 'varchar.255', 'entityVarchar', 14),
('Product Description', '', 'A high-quality widget.', 'product_description', 'varchar.500', 'entityVarchar', 14),
('Supplier Name', '', 'ABC Electronics', 'supplier_name', 'varchar.255', 'entityVarchar', 14);

insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Widget A', 'QR12345', 'Electronics', 'A high-quality widget.', 'ABC Electronics', 14);

insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Gadget B', 'QR67890', 'Electronics', 'A cool gadget.', 'ABC Electronics', 14);

insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Shirt C', 'QR54321', 'Apparel', 'A stylish shirt.', 'XYZ Apparel', 14);

insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Hat D', 'QR09876', 'Apparel', 'A trendy hat.', 'XYZ Apparel', 14);

insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Phone E', 'QR13579', 'Electronics', 'A smart phone.', 'ABC Electronics', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Tablet F', 'QR24680', 'Electronics', 'A versatile tablet.', 'ABC Electronics', 14);
-- Repeat similar insert statements with 'Electronics' and 'ABC Electronics'

insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Jeans G', 'QR35791', 'Apparel', 'Classic denim jeans.', 'XYZ Apparel', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Sneakers H', 'QR46802', 'Apparel', 'Comfortable sneakers.', 'XYZ Apparel', 14);

insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Camera I', 'QR57913', 'Electronics', 'A high-resolution camera.', 'ABC Electronics', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Smartwatch J', 'QR68024', 'Electronics', 'Stay connected with this smartwatch.', 'ABC Electronics', 14);
-- Repeat similar insert statements with 'Electronics' and 'ABC Electronics'

insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Dress K', 'QR79135', 'Apparel', 'An elegant dress for special occasions.', 'XYZ Apparel', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Sandals L', 'QR80246', 'Apparel', 'Stylish sandals for casual wear.', 'XYZ Apparel', 14);

insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Watch Q', 'QR35791', 'Accessories', 'Elegant watch for any occasion.', 'PQR Accessories', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Sunglasses R', 'QR46802', 'Accessories', 'Stylish sunglasses for UV protection.', 'PQR Accessories', 14);
-- Repeat similar insert statements with 'Accessories' and 'PQR Accessories'

insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Running Shoes S', 'QR57913', 'Footwear', 'Performance running shoes for athletes.', 'QRS Footwear', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Casual Sneakers T', 'QR68024', 'Footwear', 'Comfortable sneakers for everyday use.', 'QRS Footwear', 14);

insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Jacket U', 'QR79135', 'Apparel', 'Warm and stylish jacket for all seasons.', 'SUV Apparel', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('T-shirt V', 'QR80246', 'Apparel', 'Comfortable and versatile t-shirt.', 'SUV Apparel', 14);
-- Repeat similar insert statements with 'Apparel' and 'SUV Apparel'

insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Backpack W', 'QR91357', 'Bags', 'Spacious backpack for carrying essentials.', 'XYZ Bags', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Travel Luggage X', 'QR02468', 'Bags', 'Durable travel luggage with wheels.', 'XZY Bags', 14);

insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Running Shoes Y', 'QR13579', 'Footwear', 'Comfortable and supportive running shoes.', 'ABC Footwear', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Sandals Z', 'QR24680', 'Footwear', 'Casual and stylish sandals for everyday wear.', 'DEF Footwear', 14);
-- Repeat similar insert statements with 'Footwear' and respective suppliers

insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Wristwatch AA', 'QR35791', 'Accessories', 'Elegant wristwatch for formal occasions.', 'GHI Accessories', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Sunglasses BB', 'QR46802', 'Accessories', 'Stylish sunglasses with UV protection.', 'JKL Accessories', 14);

insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Backpack CC', 'QR57913', 'Bags', 'Durable and spacious backpack for travel and daily use.', 'MNO Bags', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Handbag DD', 'QR68024', 'Bags', 'Stylish handbag with multiple compartments.', 'PQR Bags', 14);
-- Repeat similar insert statements with 'Bags' and respective suppliers

insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Gaming Console EE', 'QR79135', 'Electronics', 'High-performance gaming console with advanced graphics.', 'STU Electronics', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Smartphone FF', 'QR80246', 'Electronics', 'Latest smartphone with advanced features and camera.', 'VWX Electronics', 14);

insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Running Shoes GG', 'QR91357', 'Footwear', 'Comfortable running shoes for athletes and fitness enthusiasts.', 'YZA Footwear', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Casual Sneakers HH', 'QR02468', 'Footwear', 'Stylish sneakers for casual wear.', 'BCD Footwear', 14);
-- Repeat similar insert statements with 'Footwear' and respective suppliers

insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Protein Powder II', 'QR13579', 'Health & Fitness', 'High-quality protein powder for muscle recovery and growth.', 'EFG Health', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Vitamins and Minerals JJ', 'QR24680', 'Health & Fitness', 'Essential vitamins and minerals for overall health.', 'HIJ Health', 14);

insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Smartphone KK', 'QR35791', 'Electronics', 'High-performance smartphone with advanced features.', 'KLM Electronics', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Laptop LL', 'QR46802', 'Electronics', 'Portable laptop with powerful processing capabilities.', 'MNO Electronics', 14);
-- Repeat similar insert statements with 'Electronics' and respective suppliers

insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Digital Camera MM', 'QR57913', 'Photography', 'Capture high-quality photos and videos with this digital camera.', 'PQR Photography', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Tripod NN', 'QR68024', 'Photography', 'Sturdy tripod for stable photography and videography.', 'STU Photography', 14);

insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Tablet OO', 'QR79135', 'Electronics', 'Versatile tablet for work and entertainment.', 'VWX Electronics', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Wireless Headphones PP', 'QR80246', 'Electronics', 'Enjoy wireless audio with these comfortable headphones.', 'YZ Electronics', 14);
-- Repeat similar insert statements with 'Electronics' and respective suppliers

insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Kitchen Mixer QQ', 'QR91357', 'Appliances', 'Powerful mixer for all your baking needs.', 'ABC Appliances', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Coffee Maker RR', 'QR02468', 'Appliances', 'Brew delicious coffee at home with this coffee maker.', 'DEF Appliances', 14);

insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Running Shoes SS', 'QR13579', 'Footwear', 'High-quality running shoes for your active lifestyle.', 'GHI Footwear', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Casual Sneakers TT', 'QR24680', 'Footwear', 'Stylish sneakers for casual outings.', 'JKL Footwear', 14);
-- Repeat similar insert statements with 'Footwear' and respective suppliers

insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Bluetooth Speaker UU', 'QR35791', 'Audio', 'Portable speaker for music on the go.', 'MNO Audio', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Noise-Canceling Headphones VV', 'QR46802', 'Audio', 'Immersive audio experience with noise-canceling technology.', 'PQR Audio', 14);

insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Smartphone XX', 'QR57913', 'Electronics', 'High-performance smartphone with advanced features.', 'STU Electronics', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Laptop YY', 'QR68024', 'Electronics', 'Powerful laptop for productivity and entertainment.', 'VWX Electronics', 14);
-- Repeat similar insert statements with 'Electronics' and respective suppliers

insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Protein Powder ZZ', 'QR79135', 'Health', 'Nutritious protein powder for post-workout recovery.', 'YZA Health', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Vitamin Supplements AA', 'QR80246', 'Health', 'Essential vitamins to support your health and well-being.', 'BCD Health', 14);

insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Running Shoes BB', 'QR91357', 'Sports', 'Comfortable running shoes for athletes and enthusiasts.', 'DEF Sports', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Yoga Mat CC', 'QR02468', 'Sports', 'High-quality yoga mat for a comfortable practice.', 'EFG Sports', 14);
-- Repeat similar insert statements with 'Sports' and respective suppliers

insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Coffee Beans DD', 'QR13579', 'Food', 'Freshly roasted coffee beans for rich and aromatic brews.', 'GHI Foods', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Organic Honey EE', 'QR24680', 'Food', 'Pure and natural organic honey from local sources.', 'IJK Foods', 14);

insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Bluetooth Speaker FF', 'QR35791', 'Electronics', 'Portable bluetooth speaker for high-quality audio.', 'LMN Electronics', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Wireless Mouse GG', 'QR46802', 'Electronics', 'Ergonomic wireless mouse for smooth navigation.', 'OPQ Electronics', 14);
-- Repeat similar insert statements with 'Electronics' and respective suppliers

insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Face Cleanser HH', 'QR57913', 'Beauty', 'Gentle face cleanser for a refreshing skincare routine.', 'RST Beauty', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Anti-Aging Serum II', 'QR68024', 'Beauty', 'Effective anti-aging serum for youthful skin.', 'UVW Beauty', 14);

insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Travel Backpack JJ', 'QR79135', 'Travel', 'Durable and spacious backpack for all your travel needs.', 'XYZ Travel Gear', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Hiking Shoes KK', 'QR80246', 'Outdoor', 'Sturdy hiking shoes for your outdoor adventures.', 'ABC Outdoors', 14);
-- Repeat similar insert statements with 'Travel' and 'Outdoor' categories and respective suppliers

insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Protein Powder LL', 'QR91357', 'Health', 'High-quality protein powder for post-workout recovery.', 'DEF Health Supplements', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Yoga Mat MM', 'QR02468', 'Sports', 'Non-slip yoga mat for comfortable workouts.', 'GHI Sports Gear', 14);

insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Cookware Set NN', 'QR13579', 'Kitchen', 'Complete set of high-quality cookware for your kitchen.', 'JKL Kitchen Essentials', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Gaming Mouse OO', 'QR24680', 'Electronics', 'Precision gaming mouse for enhanced gaming experience.', 'MNO Electronics', 14);
-- Repeat similar insert statements with 'Kitchen', 'Electronics' categories, and respective suppliers

insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Sunscreen Lotion PP', 'QR35791', 'Beauty', 'Protective sunscreen lotion for healthy skin in the sun.', 'PQR Beauty Products', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Bluetooth Speaker QQ', 'QR46802', 'Audio', 'Portable Bluetooth speaker with rich sound quality.', 'STU Audio Solutions', 14);

insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Wireless Earbuds RR', 'QR57813', 'Audio', 'High-quality wireless earbuds for music on the go.', 'STU Audio Solutions', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Smartphone Case SS', 'QR68924', 'Electronics', 'Durable smartphone case for protection and style.', 'MNO Electronics', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Face Cream TT', 'QR79035', 'Beauty', 'Hydrating face cream for a radiant complexion.', 'PQR Beauty Products', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Outdoor Grill UU', 'QR80146', 'Outdoor', 'Sturdy outdoor grill for delicious barbecues.', 'VWX Outdoor Equipment', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Hair Dryer VV', 'QR91257', 'Beauty', 'Professional hair dryer for quick and efficient styling.', 'PQR Beauty Products', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Fitness Tracker WW', 'QR02368', 'Fitness', 'Advanced fitness tracker to monitor your health and workouts.', 'YZ Fitness Gear', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Cooking Utensils XX', 'QR13479', 'Kitchen', 'Essential cooking utensils for your culinary needs.', 'JKL Kitchen Essentials', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Wireless Headphones YY', 'QR24580', 'Audio', 'Immersive wireless headphones for exceptional audio experience.', 'STU Audio Solutions', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Smart Home Hub ZZ', 'QR35691', 'Home', 'Central smart home hub to control all connected devices.', 'ABC Smart Living', 14);

insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Coffee Maker AAA', 'QR46702', 'Kitchen', 'High-quality coffee maker for your daily caffeine fix.', 'JKL Kitchen Essentials', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Wireless Keyboard BBB', 'QR57813', 'Electronics', 'Ergonomic wireless keyboard for efficient typing.', 'MNO Electronics', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Anti-Aging Cream CCC', 'QR68924', 'Beauty', 'Advanced anti-aging cream for youthful skin.', 'PQR Beauty Products', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Camping Tent DDD', 'QR79035', 'Outdoor', 'Spacious camping tent for outdoor adventures.', 'VWX Outdoor Equipment', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Blow Dryer EEE', 'QR80146', 'Beauty', 'Professional blow dryer for salon-quality results.', 'PQR Beauty Products', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Yoga Mat FFF', 'QR91257', 'Fitness', 'High-quality yoga mat for comfortable workouts.', 'YZ Fitness Gear', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Knife Set GGG', 'QR02368', 'Kitchen', 'Complete knife set for precision cooking.', 'JKL Kitchen Essentials', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Noise-Canceling Headphones HHH', 'QR13479', 'Audio', 'Advanced noise-canceling headphones for immersive audio.', 'STU Audio Solutions', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Smart Thermostat III', 'QR24580', 'Home', 'Energy-efficient smart thermostat for climate control.', 'ABC Smart Living', 14);
insert into product (product_name, qr_code, category_name, product_description, supplier_name, entity_meta_id) values ('Sewing Machine JJJ', 'QR35691', 'Crafts', 'Versatile sewing machine for creative projects.', 'XYZ Craft Supplies', 14);














