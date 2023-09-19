CREATE TABLE
  IF NOT EXISTS product (
    id SERIAL PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    qr_code VARCHAR(50) NOT NULL,
    category_name VARCHAR(255) NOT NULL,
    product_description VARCHAR(500),
    supplier_name VARCHAR(255) NOT NULL,
    entity_meta_table varchar(255) not null,
    constraint fk_entity_meta_table foreign key (entity_meta_table) references entity_meta (table_name) on delete cascade
  );

INSERT INTO
  entity_meta (
    display_name,
    description,
    table_name,
    standalone,
    custom
  )
VALUES
  ('Product', '', 'product', false, false);

-- Column: product_name
INSERT INTO
  column_meta (
    display_name,
    description,
    example,
    column_name,
    data_type,
    gen_opts_name,
    entity_meta_table
  )
VALUES
  (
    'Product Name',
    '',
    'Widget',
    'product_name',
    'varchar(255)',
    'entityVarchar',
    'product'
  ),
  (
    'Product Code',
    '',
    '1234567890',
    'qr_code',
    'varchar(50)',
    'entityVarchar',
    'product'
  ),
  (
    'Category Name',
    '',
    'Electronics',
    'category_name',
    'varchar(255)',
    'entityVarchar',
    'product'
  ),
  (
    'Product Description',
    '',
    'A high-quality widget.',
    'product_description',
    'varchar(500)',
    'entityVarchar',
    'product'
  ),
  (
    'Supplier Name',
    '',
    'ABC Electronics',
    'supplier_name',
    'varchar(255)',
    'entityVarchar',
    'product'
  );

insert into
  product (
    product_name,
    qr_code,
    category_name,
    product_description,
    supplier_name,
    entity_meta_table
  )
values
  (
    'Widget A',
    'QR12345',
    'Electronics',
    'A high-quality widget.',
    'ABC Electronics',
    'product'
  ),
  (
    'Gadget B',
    'QR67890',
    'Electronics',
    'A cool gadget.',
    'ABC Electronics',
    'product'
  ),
  (
    'Shirt C',
    'QR54321',
    'Apparel',
    'A stylish shirt.',
    'XYZ Apparel',
    'product'
  ),
  (
    'Hat D',
    'QR09876',
    'Apparel',
    'A trendy hat.',
    'XYZ Apparel',
    'product'
  ),
  (
    'Phone E',
    'QR13579',
    'Electronics',
    'A smart phone.',
    'ABC Electronics',
    'product'
  ),
  (
    'Tablet F',
    'QR24680',
    'Electronics',
    'A versatile tablet.',
    'ABC Electronics',
    'product'
  ),
  (
    'Jeans G',
    'QR35791',
    'Apparel',
    'Classic denim jeans.',
    'XYZ Apparel',
    'product'
  ),
  (
    'Sneakers H',
    'QR46802',
    'Apparel',
    'Comfortable sneakers.',
    'XYZ Apparel',
    'product'
  ),
  (
    'Camera I',
    'QR57913',
    'Electronics',
    'A high-resolution camera.',
    'ABC Electronics',
    'product'
  ),
  (
    'Smartwatch J',
    'QR68024',
    'Electronics',
    'Stay connected with this smartwatch.',
    'ABC Electronics',
    'product'
  ),
  (
    'Dress K',
    'QR79135',
    'Apparel',
    'An elegant dress for special occasions.',
    'XYZ Apparel',
    'product'
  ),
  (
    'Sandals L',
    'QR80246',
    'Apparel',
    'Stylish sandals for casual wear.',
    'XYZ Apparel',
    'product'
  ),
  (
    'Watch Q',
    'QR35791',
    'Accessories',
    'Elegant watch for any occasion.',
    'PQR Accessories',
    'product'
  ),
  (
    'Sunglasses R',
    'QR46802',
    'Accessories',
    'Stylish sunglasses for UV protection.',
    'PQR Accessories',
    'product'
  ),
  (
    'Running Shoes S',
    'QR57913',
    'Footwear',
    'Performance running shoes for athletes.',
    'QRS Footwear',
    'product'
  ),
  (
    'Casual Sneakers T',
    'QR68024',
    'Footwear',
    'Comfortable sneakers for everyday use.',
    'QRS Footwear',
    'product'
  ),
  (
    'Jacket U',
    'QR79135',
    'Apparel',
    'Warm and stylish jacket for all seasons.',
    'SUV Apparel',
    'product'
  ),
  (
    'T-shirt V',
    'QR80246',
    'Apparel',
    'Comfortable and versatile t-shirt.',
    'SUV Apparel',
    'product'
  ),
  (
    'Backpack W',
    'QR91357',
    'Bags',
    'Spacious backpack for carrying essentials.',
    'XYZ Bags',
    'product'
  ),
  (
    'Travel Luggage X',
    'QR02468',
    'Bags',
    'Durable travel luggage with wheels.',
    'XZY Bags',
    'product'
  ),
  (
    'Running Shoes Y',
    'QR13579',
    'Footwear',
    'Comfortable and supportive running shoes.',
    'ABC Footwear',
    'product'
  ),
  (
    'Sandals Z',
    'QR24680',
    'Footwear',
    'Casual and stylish sandals for everyday wear.',
    'DEF Footwear',
    'product'
  ),
  (
    'Wristwatch AA',
    'QR35791',
    'Accessories',
    'Elegant wristwatch for formal occasions.',
    'GHI Accessories',
    'product'
  ),
  (
    'Sunglasses BB',
    'QR46802',
    'Accessories',
    'Stylish sunglasses with UV protection.',
    'JKL Accessories',
    'product'
  ),
  (
    'Backpack CC',
    'QR57913',
    'Bags',
    'Durable and spacious backpack for travel and daily use.',
    'MNO Bags',
    'product'
  ),
  (
    'Handbag DD',
    'QR68024',
    'Bags',
    'Stylish handbag with multiple compartments.',
    'PQR Bags',
    'product'
  ),
  (
    'Gaming Console EE',
    'QR79135',
    'Electronics',
    'High-performance gaming console with advanced graphics.',
    'STU Electronics',
    'product'
  ),
  (
    'Smartphone FF',
    'QR80246',
    'Electronics',
    'Latest smartphone with advanced features and camera.',
    'VWX Electronics',
    'product'
  ),
  (
    'Running Shoes GG',
    'QR91357',
    'Footwear',
    'Comfortable running shoes for athletes and fitness enthusiasts.',
    'YZA Footwear',
    'product'
  ),
  (
    'Casual Sneakers HH',
    'QR02468',
    'Footwear',
    'Stylish sneakers for casual wear.',
    'BCD Footwear',
    'product'
  ),
  (
    'Protein Powder II',
    'QR13579',
    'Health & Fitness',
    'High-quality protein powder for muscle recovery and growth.',
    'EFG Health',
    'product'
  ),
  (
    'Vitamins and Minerals JJ',
    'QR24680',
    'Health & Fitness',
    'Essential vitamins and minerals for overall health.',
    'HIJ Health',
    'product'
  ),
  (
    'Smartphone KK',
    'QR35791',
    'Electronics',
    'High-performance smartphone with advanced features.',
    'KLM Electronics',
    'product'
  ),
  (
    'Laptop LL',
    'QR46802',
    'Electronics',
    'Portable laptop with powerful processing capabilities.',
    'MNO Electronics',
    'product'
  ),
  (
    'Digital Camera MM',
    'QR57913',
    'Photography',
    'Capture high-quality photos and videos with this digital camera.',
    'PQR Photography',
    'product'
  ),
  (
    'Tripod NN',
    'QR68024',
    'Photography',
    'Sturdy tripod for stable photography and videography.',
    'STU Photography',
    'product'
  ),
  (
    'Tablet OO',
    'QR79135',
    'Electronics',
    'Versatile tablet for work and entertainment.',
    'VWX Electronics',
    'product'
  ),
  (
    'Wireless Headphones PP',
    'QR80246',
    'Electronics',
    'Enjoy wireless audio with these comfortable headphones.',
    'YZ Electronics',
    'product'
  ),
  (
    'Kitchen Mixer QQ',
    'QR91357',
    'Appliances',
    'Powerful mixer for all your baking needs.',
    'ABC Appliances',
    'product'
  ),
  (
    'Coffee Maker RR',
    'QR02468',
    'Appliances',
    'Brew delicious coffee at home with this coffee maker.',
    'DEF Appliances',
    'product'
  ),
  (
    'Running Shoes SS',
    'QR13579',
    'Footwear',
    'High-quality running shoes for your active lifestyle.',
    'GHI Footwear',
    'product'
  ),
  (
    'Casual Sneakers TT',
    'QR24680',
    'Footwear',
    'Stylish sneakers for casual outings.',
    'JKL Footwear',
    'product'
  ),
  (
    'Bluetooth Speaker UU',
    'QR35791',
    'Audio',
    'Portable speaker for music on the go.',
    'MNO Audio',
    'product'
  ),
  (
    'Noise-Canceling Headphones VV',
    'QR46802',
    'Audio',
    'Immersive audio experience with noise-canceling technology.',
    'PQR Audio',
    'product'
  ),
  (
    'Smartphone XX',
    'QR57913',
    'Electronics',
    'High-performance smartphone with advanced features.',
    'STU Electronics',
    'product'
  ),
  (
    'Laptop YY',
    'QR68024',
    'Electronics',
    'Powerful laptop for productivity and entertainment.',
    'VWX Electronics',
    'product'
  ),
  (
    'Protein Powder ZZ',
    'QR79135',
    'Health',
    'Nutritious protein powder for post-workout recovery.',
    'YZA Health',
    'product'
  ),
  (
    'Vitamin Supplements AA',
    'QR80246',
    'Health',
    'Essential vitamins to support your health and well-being.',
    'BCD Health',
    'product'
  ),
  (
    'Running Shoes BB',
    'QR91357',
    'Sports',
    'Comfortable running shoes for athletes and enthusiasts.',
    'DEF Sports',
    'product'
  ),
  (
    'Yoga Mat CC',
    'QR02468',
    'Sports',
    'High-quality yoga mat for a comfortable practice.',
    'EFG Sports',
    'product'
  ),
  (
    'Coffee Beans DD',
    'QR13579',
    'Food',
    'Freshly roasted coffee beans for rich and aromatic brews.',
    'GHI Foods',
    'product'
  ),
  (
    'Organic Honey EE',
    'QR24680',
    'Food',
    'Pure and natural organic honey from local sources.',
    'IJK Foods',
    'product'
  ),
  (
    'Bluetooth Speaker FF',
    'QR35791',
    'Electronics',
    'Portable bluetooth speaker for high-quality audio.',
    'LMN Electronics',
    'product'
  ),
  (
    'Wireless Mouse GG',
    'QR46802',
    'Electronics',
    'Ergonomic wireless mouse for smooth navigation.',
    'OPQ Electronics',
    'product'
  ),
  (
    'Face Cleanser HH',
    'QR57913',
    'Beauty',
    'Gentle face cleanser for a refreshing skincare routine.',
    'RST Beauty',
    'product'
  ),
  (
    'Anti-Aging Serum II',
    'QR68024',
    'Beauty',
    'Effective anti-aging serum for youthful skin.',
    'UVW Beauty',
    'product'
  ),
  (
    'Travel Backpack JJ',
    'QR79135',
    'Travel',
    'Durable and spacious backpack for all your travel needs.',
    'XYZ Travel Gear',
    'product'
  ),
  (
    'Hiking Shoes KK',
    'QR80246',
    'Outdoor',
    'Sturdy hiking shoes for your outdoor adventures.',
    'ABC Outdoors',
    'product'
  ),
  (
    'Protein Powder LL',
    'QR91357',
    'Health',
    'High-quality protein powder for post-workout recovery.',
    'DEF Health Supplements',
    'product'
  ),
  (
    'Yoga Mat MM',
    'QR02468',
    'Sports',
    'Non-slip yoga mat for comfortable workouts.',
    'GHI Sports Gear',
    'product'
  ),
  (
    'Cookware Set NN',
    'QR13579',
    'Kitchen',
    'Complete set of high-quality cookware for your kitchen.',
    'JKL Kitchen Essentials',
    'product'
  ),
  (
    'Gaming Mouse OO',
    'QR24680',
    'Electronics',
    'Precision gaming mouse for enhanced gaming experience.',
    'MNO Electronics',
    'product'
  ),
  (
    'Sunscreen Lotion PP',
    'QR35791',
    'Beauty',
    'Protective sunscreen lotion for healthy skin in the sun.',
    'PQR Beauty Products',
    'product'
  ),
  (
    'Bluetooth Speaker QQ',
    'QR46802',
    'Audio',
    'Portable Bluetooth speaker with rich sound quality.',
    'STU Audio Solutions',
    'product'
  ),
  (
    'Wireless Earbuds RR',
    'QR57813',
    'Audio',
    'High-quality wireless earbuds for music on the go.',
    'STU Audio Solutions',
    'product'
  ),
  (
    'Smartphone Case SS',
    'QR68924',
    'Electronics',
    'Durable smartphone case for protection and style.',
    'MNO Electronics',
    'product'
  ),
  (
    'Face Cream TT',
    'QR79035',
    'Beauty',
    'Hydrating face cream for a radiant complexion.',
    'PQR Beauty Products',
    'product'
  ),
  (
    'Outdoor Grill UU',
    'QR80146',
    'Outdoor',
    'Sturdy outdoor grill for delicious barbecues.',
    'VWX Outdoor Equipment',
    'product'
  ),
  (
    'Hair Dryer VV',
    'QR91257',
    'Beauty',
    'Professional hair dryer for quick and efficient styling.',
    'PQR Beauty Products',
    'product'
  ),
  (
    'Fitness Tracker WW',
    'QR02368',
    'Fitness',
    'Advanced fitness tracker to monitor your health and workouts.',
    'YZ Fitness Gear',
    'product'
  ),
  (
    'Cooking Utensils XX',
    'QR13479',
    'Kitchen',
    'Essential cooking utensils for your culinary needs.',
    'JKL Kitchen Essentials',
    'product'
  ),
  (
    'Wireless Headphones YY',
    'QR24580',
    'Audio',
    'Immersive wireless headphones for exceptional audio experience.',
    'STU Audio Solutions',
    'product'
  ),
  (
    'Smart Home Hub ZZ',
    'QR35691',
    'Home',
    'Central smart home hub to control all connected devices.',
    'ABC Smart Living',
    'product'
  ),
  (
    'Coffee Maker AAA',
    'QR46702',
    'Kitchen',
    'High-quality coffee maker for your daily caffeine fix.',
    'JKL Kitchen Essentials',
    'product'
  ),
  (
    'Wireless Keyboard BBB',
    'QR57813',
    'Electronics',
    'Ergonomic wireless keyboard for efficient typing.',
    'MNO Electronics',
    'product'
  ),
  (
    'Anti-Aging Cream CCC',
    'QR68924',
    'Beauty',
    'Advanced anti-aging cream for youthful skin.',
    'PQR Beauty Products',
    'product'
  ),
  (
    'Camping Tent DDD',
    'QR79035',
    'Outdoor',
    'Spacious camping tent for outdoor adventures.',
    'VWX Outdoor Equipment',
    'product'
  ),
  (
    'Blow Dryer EEE',
    'QR80146',
    'Beauty',
    'Professional blow dryer for salon-quality results.',
    'PQR Beauty Products',
    'product'
  ),
  (
    'Yoga Mat FFF',
    'QR91257',
    'Fitness',
    'High-quality yoga mat for comfortable workouts.',
    'YZ Fitness Gear',
    'product'
  ),
  (
    'Knife Set GGG',
    'QR02368',
    'Kitchen',
    'Complete knife set for precision cooking.',
    'JKL Kitchen Essentials',
    'product'
  ),
  (
    'Noise-Canceling Headphones HHH',
    'QR13479',
    'Audio',
    'Advanced noise-canceling headphones for immersive audio.',
    'STU Audio Solutions',
    'product'
  ),
  (
    'Smart Thermostat III',
    'QR24580',
    'Home',
    'Energy-efficient smart thermostat for climate control.',
    'ABC Smart Living',
    'product'
  ),
  (
    'Sewing Machine JJJ',
    'QR35691',
    'Crafts',
    'Versatile sewing machine for creative projects.',
    'XYZ Craft Supplies',
    'product'
  );