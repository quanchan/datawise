create table if not exists food (
    id serial primary key,
    name varchar(255) not null,
    ingredients varchar(255),
    description varchar(255),
    entity_meta_id int not null,
    foreign key (entity_meta_id) references entity_meta(id)
);

insert into entity_meta (id, display_name, description, table_name, standalone, custom)
values
    (15, 'Food', '', 'food', false, false);

insert into column_meta (display_name, description, example, column_name, data_type, gen_opts_name, entity_meta_id)
values
    ('Name', '', 'Pasta', 'name', 'varchar.255', 'entityVarchar', 15),
    ('Ingredients', '', 'Flour, water, salt', 'ingredients', 'varchar.255', 'entityVarchar', 15),
    ('Description', '', 'Delicious pasta dish', 'description', 'varchar.255', 'entityVarchar', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Pasta Carbonara', 'Pasta, eggs, bacon, Parmesan cheese', 'Italian pasta dish', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Chicken Alfredo', 'Chicken, fettuccine pasta, Alfredo sauce', 'Creamy chicken pasta', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Margherita Pizza', 'Pizza dough, tomatoes, mozzarella cheese, basil', 'Traditional Italian pizza', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Spaghetti Bolognese', 'Spaghetti, ground beef, tomato sauce, onions', 'Hearty meat sauce pasta', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Caesar Salad', 'Romaine lettuce, croutons, Parmesan cheese, Caesar dressing', 'Classic Caesar salad', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Cheeseburger', 'Beef patty, cheese, lettuce, tomato, onion', 'All-American burger', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Vegetable Stir-Fry', 'Mixed vegetables, soy sauce, ginger, garlic', 'Quick and healthy stir-fry', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Chicken Tacos', 'Chicken, tortillas, lettuce, tomato, salsa', 'Tasty chicken tacos', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Mushroom Risotto', 'Arborio rice, mushrooms, white wine, Parmesan cheese', 'Creamy mushroom rice dish', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Greek Salad', 'Cucumbers, tomatoes, red onion, feta cheese', 'Healthy Mediterranean salad', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('BBQ Ribs', 'Pork ribs, BBQ sauce, coleslaw, baked beans', 'Delicious barbecue ribs', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Shrimp Scampi', 'Shrimp, linguine pasta, garlic, butter', 'Garlicky shrimp pasta', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Veggie Burger', 'Veggie patty, lettuce, tomato, onion, cheese', 'Plant-based burger', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Chicken Caesar Wrap', 'Chicken, lettuce, Caesar dressing, tortilla', 'Portable Caesar salad', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Pepperoni Pizza', 'Pizza dough, pepperoni, mozzarella cheese, tomato sauce', 'Classic pepperoni pizza', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Caprese Salad', 'Tomatoes, mozzarella cheese, basil, balsamic vinegar', 'Fresh and flavorful salad', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Beef Stir-Fry', 'Beef, bell peppers, broccoli, soy sauce', 'Quick and savory stir-fry', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Chocolate Brownie', 'Flour, sugar, eggs, cocoa powder', 'Decadent chocolate dessert', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Pesto Pasta', 'Pasta, basil pesto, pine nuts, Parmesan cheese', 'Fresh and aromatic pasta', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Fruit Salad', 'Assorted fruits, honey, lime juice', 'Refreshing fruit medley', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Chicken Fried Rice', 'Chicken, rice, eggs, vegetables', 'Savory fried rice dish', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Cheese Quesadilla', 'Tortilla, cheese, vegetables, salsa', 'Melted cheese-filled tortilla', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Classic BLT Sandwich', 'Bacon, lettuce, tomato, bread', 'Timeless sandwich favorite', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Vegetable Omelette', 'Eggs, mixed vegetables, cheese', 'Fluffy and nutritious omelette', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Beef Burrito', 'Beef, rice, beans, cheese, tortilla', 'Hearty beef-filled burrito', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Mango Smoothie', 'Mango, yogurt, honey, ice', 'Creamy and refreshing smoothie', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Grilled Cheese Sandwich', 'Bread, cheese, butter', 'Classic grilled cheese', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Pancakes', 'Flour, eggs, milk, maple syrup', 'Fluffy breakfast pancakes', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Caesar Wrap', 'Lettuce, Caesar dressing, croutons, Parmesan cheese', 'Portable Caesar salad wrap', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Beef Tacos', 'Beef, tortillas, lettuce, tomato, cheese', 'Flavorful beef tacos', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Veggie Stir-Fry', 'Mixed vegetables, tofu, soy sauce', 'Healthy plant-based stir-fry', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Chicken Noodle Soup', 'Chicken, noodles, vegetables, broth', 'Comforting chicken soup', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Sushi Roll', 'Rice, fish, seaweed, vegetables', 'Japanese sushi delicacy', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Oatmeal', 'Oats, milk, fruits, nuts', 'Warm and hearty breakfast', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Fettuccine Alfredo', 'Fettuccine pasta, Alfredo sauce, Parmesan cheese', 'Creamy pasta dish', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Mushroom Pizza', 'Pizza dough, mushrooms, mozzarella cheese, tomato sauce', 'Savory mushroom pizza', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Chicken Salad', 'Chicken, lettuce, vegetables, dressing', 'Wholesome chicken salad', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Chocolate Chip Cookies', 'Flour, sugar, chocolate chips, butter', 'Classic chocolate chip cookies', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Green Smoothie', 'Spinach, banana, pineapple, almond milk', 'Healthy and energizing smoothie', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Tomato Soup', 'Tomatoes, broth, herbs, cream', 'Warm and comforting soup', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Pesto Pasta', 'Pasta, basil, pine nuts, Parmesan cheese', 'Flavorful pesto pasta dish', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Hawaiian Pizza', 'Pizza dough, ham, pineapple, mozzarella cheese', 'Sweet and savory pizza', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Chicken Tenders', 'Chicken tenders, breadcrumbs, seasoning', 'Crispy chicken tenders', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Fruit Salad', 'Assorted fruits, honey, mint', 'Refreshing mixed fruit salad', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Veggie Burger', 'Veggie patty, bun, lettuce, tomato', 'Plant-based burger option', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('BBQ Ribs', 'Pork ribs, BBQ sauce, seasoning', 'Savory and saucy BBQ ribs', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Greek Salad', 'Lettuce, feta cheese, olives, cucumber', 'Traditional Greek salad', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Spaghetti Carbonara', 'Spaghetti, eggs, pancetta, Parmesan cheese', 'Creamy pasta with Italian flavors', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Baked Potato', 'Potato, butter, sour cream, chives', 'Simple and comforting baked potato', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Pancetta Wrap', 'Pancetta, lettuce, tomato, tortilla', 'Savory pancetta wrap', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Lemonade', 'Lemon juice, water, sugar, ice', 'Refreshing citrusy drink', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Egg Salad Sandwich', 'Eggs, mayonnaise, mustard, bread', 'Creamy egg salad sandwich', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Vegan Curry', 'Mixed vegetables, coconut milk, curry spices', 'Flavorful plant-based curry', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Chocolate Brownies', 'Flour, sugar, cocoa powder, chocolate chips', 'Rich and indulgent chocolate treat', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Caprese Salad', 'Tomato, mozzarella cheese, basil, balsamic glaze', 'Simple and elegant salad', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Berry Parfait', 'Mixed berries, yogurt, granola, honey', 'Delicious and colorful parfait', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Turkey Club Sandwich', 'Turkey, bacon, lettuce, tomato, bread', 'Classic turkey club sandwich', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Mango Salsa', 'Mango, red onion, cilantro, lime', 'Fresh and fruity salsa', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Rice Pudding', 'Rice, milk, sugar, cinnamon', 'Creamy and comforting dessert', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Chicken Alfredo', 'Chicken, fettuccine pasta, Alfredo sauce', 'Creamy chicken pasta dish', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Caesar Salad', 'Romaine lettuce, croutons, Parmesan cheese, Caesar dressing', 'Classic Caesar salad', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Margherita Pizza', 'Pizza dough, tomato sauce, mozzarella cheese, basil', 'Traditional Margherita pizza', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Beef Tacos', 'Ground beef, taco shells, lettuce, cheese', 'Savory beef taco filling', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Mixed Nuts', 'Almonds, walnuts, cashews, pistachios', 'Nutty and satisfying snack', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Pasta Primavera', 'Pasta, assorted vegetables, olive oil', 'Light and veggie-packed pasta', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Apple Pie', 'Apples, pie crust, sugar, cinnamon', 'Homemade apple pie', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Fried Rice', 'Rice, mixed vegetables, soy sauce, eggs', 'Flavorful fried rice dish', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Cheese Platter', 'Assorted cheeses, crackers, grapes', 'Perfect for snacking', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Omelette', 'Eggs, cheese, bell peppers, onions', 'Customizable breakfast option', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Spinach Dip', 'Spinach, cream cheese, sour cream, garlic', 'Creamy and savory dip', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Chicken Noodle Soup', 'Chicken broth, chicken, noodles, vegetables', 'Classic comfort food', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Tiramisu', 'Ladyfingers, coffee, mascarpone cheese, cocoa powder', 'Italian dessert favorite', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Garden Salad', 'Mixed greens, vegetables, dressing', 'Fresh and healthy salad', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Stir-Fry', 'Assorted vegetables, protein, stir-fry sauce', 'Quick and flavorful stir-fry', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Blueberry Pancakes', 'Pancake mix, blueberries, maple syrup', 'Fluffy and fruity pancakes', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Steak', 'Steak, seasoning, butter', 'Juicy and flavorful steak', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Avocado Toast', 'Avocado, toast, salt, pepper', 'Trendy and nutritious breakfast', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Cucumber Salad', 'Cucumber, red onion, dill, vinegar', 'Cool and refreshing side dish', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Chocolate Chip Cookies', 'Flour, chocolate chips, sugar, butter', 'Classic homemade cookies', 15);

insert into food (name, ingredients, description, entity_meta_id)
values ('Mushroom Risotto', 'Arborio rice, mushrooms, white wine, Parmesan cheese', 'Creamy and savory rice dish', 15);


