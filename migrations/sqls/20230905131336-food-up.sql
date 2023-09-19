create table
  if not exists food (
    id serial primary key,
    name varchar(255) not null,
    ingredients varchar(255),
    description varchar(255),
    entity_meta_table varchar(255) not null,
    constraint fk_entity_meta_table foreign key (entity_meta_table) references entity_meta (table_name) on delete cascade
  );

insert into
  entity_meta (
    display_name,
    description,
    table_name,
    standalone,
    custom
  )
values
  ('Food', '', 'food', false, false);

insert into
  column_meta (
    display_name,
    description,
    example,
    column_name,
    data_type,
    gen_opts_name,
    entity_meta_table
  )
values
  (
    'Food Name',
    '',
    'Pasta, Margherita Pizza, Chicken Alfredo',
    'name',
    'varchar(255)',
    'entityVarchar',
    'food'
  ),
  (
    'Food Ingredients',
    '',
    'Flour, water, salt',
    'ingredients',
    'varchar(255)',
    'entityVarchar',
    'food'
  ),
  (
    'Food Description',
    '',
    'Delicious pasta dish',
    'description',
    'varchar(255)',
    'entityVarchar',
    'food'
  );

insert into
  food (name, ingredients, description, entity_meta_table)
values
  (
    'Pasta Carbonara',
    'Pasta, eggs, bacon, Parmesan cheese',
    'Italian pasta dish',
    'food'
  ),
  (
    'Chicken Alfredo',
    'Chicken, fettuccine pasta, Alfredo sauce',
    'Creamy chicken pasta',
    'food'
  ),
  (
    'Margherita Pizza',
    'Pizza dough, tomatoes, mozzarella cheese, basil',
    'Traditional Italian pizza',
    'food'
  ),
  (
    'Spaghetti Bolognese',
    'Spaghetti, ground beef, tomato sauce, onions',
    'Hearty meat sauce pasta',
    'food'
  ),
  (
    'Caesar Salad',
    'Romaine lettuce, croutons, Parmesan cheese, Caesar dressing',
    'Classic Caesar salad',
    'food'
  ),
  (
    'Cheeseburger',
    'Beef patty, cheese, lettuce, tomato, onion',
    'All-American burger',
    'food'
  ),
  (
    'Vegetable Stir-Fry',
    'Mixed vegetables, soy sauce, ginger, garlic',
    'Quick and healthy stir-fry',
    'food'
  ),
  (
    'Chicken Tacos',
    'Chicken, tortillas, lettuce, tomato, salsa',
    'Tasty chicken tacos',
    'food'
  ),
  (
    'Mushroom Risotto',
    'Arborio rice, mushrooms, white wine, Parmesan cheese',
    'Creamy mushroom rice dish',
    'food'
  ),
  (
    'Greek Salad',
    'Cucumbers, tomatoes, red onion, feta cheese',
    'Healthy Mediterranean salad',
    'food'
  ),
  (
    'BBQ Ribs',
    'Pork ribs, BBQ sauce, coleslaw, baked beans',
    'Delicious barbecue ribs',
    'food'
  ),
  (
    'Shrimp Scampi',
    'Shrimp, linguine pasta, garlic, butter',
    'Garlicky shrimp pasta',
    'food'
  ),
  (
    'Veggie Burger',
    'Veggie patty, lettuce, tomato, onion, cheese',
    'Plant-based burger',
    'food'
  ),
  (
    'Chicken Caesar Wrap',
    'Chicken, lettuce, Caesar dressing, tortilla',
    'Portable Caesar salad',
    'food'
  ),
  (
    'Pepperoni Pizza',
    'Pizza dough, pepperoni, mozzarella cheese, tomato sauce',
    'Classic pepperoni pizza',
    'food'
  ),
  (
    'Caprese Salad',
    'Tomatoes, mozzarella cheese, basil, balsamic vinegar',
    'Fresh and flavorful salad',
    'food'
  ),
  (
    'Beef Stir-Fry',
    'Beef, bell peppers, broccoli, soy sauce',
    'Quick and savory stir-fry',
    'food'
  ),
  (
    'Chocolate Brownie',
    'Flour, sugar, eggs, cocoa powder',
    'Decadent chocolate dessert',
    'food'
  ),
  (
    'Pesto Pasta',
    'Pasta, basil pesto, pine nuts, Parmesan cheese',
    'Fresh and aromatic pasta',
    'food'
  ),
  (
    'Fruit Salad',
    'Assorted fruits, honey, lime juice',
    'Refreshing fruit medley',
    'food'
  ),
  (
    'Chicken Fried Rice',
    'Chicken, rice, eggs, vegetables',
    'Savory fried rice dish',
    'food'
  ),
  (
    'Cheese Quesadilla',
    'Tortilla, cheese, vegetables, salsa',
    'Melted cheese-filled tortilla',
    'food'
  ),
  (
    'Classic BLT Sandwich',
    'Bacon, lettuce, tomato, bread',
    'Timeless sandwich favorite',
    'food'
  ),
  (
    'Vegetable Omelette',
    'Eggs, mixed vegetables, cheese',
    'Fluffy and nutritious omelette',
    'food'
  ),
  (
    'Beef Burrito',
    'Beef, rice, beans, cheese, tortilla',
    'Hearty beef-filled burrito',
    'food'
  ),
  (
    'Mango Smoothie',
    'Mango, yogurt, honey, ice',
    'Creamy and refreshing smoothie',
    'food'
  ),
  (
    'Grilled Cheese Sandwich',
    'Bread, cheese, butter',
    'Classic grilled cheese',
    'food'
  ),
  (
    'Pancakes',
    'Flour, eggs, milk, maple syrup',
    'Fluffy breakfast pancakes',
    'food'
  ),
  (
    'Caesar Wrap',
    'Lettuce, Caesar dressing, croutons, Parmesan cheese',
    'Portable Caesar salad wrap',
    'food'
  ),
  (
    'Beef Tacos',
    'Beef, tortillas, lettuce, tomato, cheese',
    'Flavorful beef tacos',
    'food'
  ),
  (
    'Veggie Stir-Fry',
    'Mixed vegetables, tofu, soy sauce',
    'Healthy plant-based stir-fry',
    'food'
  ),
  (
    'Chicken Noodle Soup',
    'Chicken, noodles, vegetables, broth',
    'Comforting chicken soup',
    'food'
  ),
  (
    'Sushi Roll',
    'Rice, fish, seaweed, vegetables',
    'Japanese sushi delicacy',
    'food'
  ),
  (
    'Oatmeal',
    'Oats, milk, fruits, nuts',
    'Warm and hearty breakfast',
    'food'
  ),
  (
    'Fettuccine Alfredo',
    'Fettuccine pasta, Alfredo sauce, Parmesan cheese',
    'Creamy pasta dish',
    'food'
  ),
  (
    'Mushroom Pizza',
    'Pizza dough, mushrooms, mozzarella cheese, tomato sauce',
    'Savory mushroom pizza',
    'food'
  ),
  (
    'Chicken Salad',
    'Chicken, lettuce, vegetables, dressing',
    'Wholesome chicken salad',
    'food'
  ),
  (
    'Chocolate Chip Cookies',
    'Flour, sugar, chocolate chips, butter',
    'Classic chocolate chip cookies',
    'food'
  ),
  (
    'Green Smoothie',
    'Spinach, banana, pineapple, almond milk',
    'Healthy and energizing smoothie',
    'food'
  ),
  (
    'Tomato Soup',
    'Tomatoes, broth, herbs, cream',
    'Warm and comforting soup',
    'food'
  ),
  (
    'Pesto Pasta',
    'Pasta, basil, pine nuts, Parmesan cheese',
    'Flavorful pesto pasta dish',
    'food'
  ),
  (
    'Hawaiian Pizza',
    'Pizza dough, ham, pineapple, mozzarella cheese',
    'Sweet and savory pizza',
    'food'
  ),
  (
    'Chicken Tenders',
    'Chicken tenders, breadcrumbs, seasoning',
    'Crispy chicken tenders',
    'food'
  ),
  (
    'Fruit Salad',
    'Assorted fruits, honey, mint',
    'Refreshing mixed fruit salad',
    'food'
  ),
  (
    'Veggie Burger',
    'Veggie patty, bun, lettuce, tomato',
    'Plant-based burger option',
    'food'
  ),
  (
    'BBQ Ribs',
    'Pork ribs, BBQ sauce, seasoning',
    'Savory and saucy BBQ ribs',
    'food'
  ),
  (
    'Greek Salad',
    'Lettuce, feta cheese, olives, cucumber',
    'Traditional Greek salad',
    'food'
  ),
  (
    'Spaghetti Carbonara',
    'Spaghetti, eggs, pancetta, Parmesan cheese',
    'Creamy pasta with Italian flavors',
    'food'
  ),
  (
    'Baked Potato',
    'Potato, butter, sour cream, chives',
    'Simple and comforting baked potato',
    'food'
  ),
  (
    'Pancetta Wrap',
    'Pancetta, lettuce, tomato, tortilla',
    'Savory pancetta wrap',
    'food'
  ),
  (
    'Lemonade',
    'Lemon juice, water, sugar, ice',
    'Refreshing citrusy drink',
    'food'
  ),
  (
    'Egg Salad Sandwich',
    'Eggs, mayonnaise, mustard, bread',
    'Creamy egg salad sandwich',
    'food'
  ),
  (
    'Vegan Curry',
    'Mixed vegetables, coconut milk, curry spices',
    'Flavorful plant-based curry',
    'food'
  ),
  (
    'Chocolate Brownies',
    'Flour, sugar, cocoa powder, chocolate chips',
    'Rich and indulgent chocolate treat',
    'food'
  ),
  (
    'Caprese Salad',
    'Tomato, mozzarella cheese, basil, balsamic glaze',
    'Simple and elegant salad',
    'food'
  ),
  (
    'Berry Parfait',
    'Mixed berries, yogurt, granola, honey',
    'Delicious and colorful parfait',
    'food'
  ),
  (
    'Turkey Club Sandwich',
    'Turkey, bacon, lettuce, tomato, bread',
    'Classic turkey club sandwich',
    'food'
  ),
  (
    'Mango Salsa',
    'Mango, red onion, cilantro, lime',
    'Fresh and fruity salsa',
    'food'
  ),
  (
    'Rice Pudding',
    'Rice, milk, sugar, cinnamon',
    'Creamy and comforting dessert',
    'food'
  ),
  (
    'Chicken Alfredo',
    'Chicken, fettuccine pasta, Alfredo sauce',
    'Creamy chicken pasta dish',
    'food'
  ),
  (
    'Caesar Salad',
    'Romaine lettuce, croutons, Parmesan cheese, Caesar dressing',
    'Classic Caesar salad',
    'food'
  ),
  (
    'Margherita Pizza',
    'Pizza dough, tomato sauce, mozzarella cheese, basil',
    'Traditional Margherita pizza',
    'food'
  ),
  (
    'Beef Tacos',
    'Ground beef, taco shells, lettuce, cheese',
    'Savory beef taco filling',
    'food'
  ),
  (
    'Mixed Nuts',
    'Almonds, walnuts, cashews, pistachios',
    'Nutty and satisfying snack',
    'food'
  ),
  (
    'Pasta Primavera',
    'Pasta, assorted vegetables, olive oil',
    'Light and veggie-packed pasta',
    'food'
  ),
  (
    'Apple Pie',
    'Apples, pie crust, sugar, cinnamon',
    'Homemade apple pie',
    'food'
  ),
  (
    'Fried Rice',
    'Rice, mixed vegetables, soy sauce, eggs',
    'Flavorful fried rice dish',
    'food'
  ),
  (
    'Cheese Platter',
    'Assorted cheeses, crackers, grapes',
    'Perfect for snacking',
    'food'
  ),
  (
    'Omelette',
    'Eggs, cheese, bell peppers, onions',
    'Customizable breakfast option',
    'food'
  ),
  (
    'Spinach Dip',
    'Spinach, cream cheese, sour cream, garlic',
    'Creamy and savory dip',
    'food'
  ),
  (
    'Chicken Noodle Soup',
    'Chicken broth, chicken, noodles, vegetables',
    'Classic comfort food',
    'food'
  ),
  (
    'Tiramisu',
    'Ladyfingers, coffee, mascarpone cheese, cocoa powder',
    'Italian dessert favorite',
    'food'
  ),
  (
    'Garden Salad',
    'Mixed greens, vegetables, dressing',
    'Fresh and healthy salad',
    'food'
  ),
  (
    'Stir-Fry',
    'Assorted vegetables, protein, stir-fry sauce',
    'Quick and flavorful stir-fry',
    'food'
  ),
  (
    'Blueberry Pancakes',
    'Pancake mix, blueberries, maple syrup',
    'Fluffy and fruity pancakes',
    'food'
  ),
  (
    'Steak',
    'Steak, seasoning, butter',
    'Juicy and flavorful steak',
    'food'
  ),
  (
    'Avocado Toast',
    'Avocado, toast, salt, pepper',
    'Trendy and nutritious breakfast',
    'food'
  ),
  (
    'Cucumber Salad',
    'Cucumber, red onion, dill, vinegar',
    'Cool and refreshing side dish',
    'food'
  ),
  (
    'Chocolate Chip Cookies',
    'Flour, chocolate chips, sugar, butter',
    'Classic homemade cookies',
    'food'
  ),
  (
    'Mushroom Risotto',
    'Arborio rice, mushrooms, white wine, Parmesan cheese',
    'Creamy and savory rice dish',
    'food'
  );