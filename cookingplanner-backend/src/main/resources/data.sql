INSERT INTO Recipe (id, name, instructions, category)
VALUES (1, '🍝 Pasta Carbonara', 'Cook pasta, mix with eggs and cheese, add bacon.', 'main course'),
       (2, '🎃 Pumpkin Soup', 'Cook everything, add bouillon, mix it.', 'appetizer'),
       (3, '🍫 Chocolate Cake', 'Mix ingredients, bake at 350F for 30 minutes.', 'dessert'),
       (4, '🥗 Caesar Salad', 'Toss all ingredients together and serve.', 'appetizer'),
       (5, '🍕 Margherita Pizza', 'Spread sauce on dough, add cheese and basil, bake at 475F.', 'main course'),
       (6, '🍣 Sushi Rolls', 'Roll ingredients in nori, slice, and serve with soy sauce.', 'main course'),
       (7, '🍛 Chicken Curry', 'Cook chicken with curry, add coconut milk, serve over rice.', 'main course'),
       (8, '🥩 Grilled Steak', 'Season steak and grill to desired doneness.', 'main course'),
       (9, '🍦 Vanilla Ice Cream', 'Mix ingredients and churn in an ice cream maker.', 'dessert'),
       (10, '🥔 Mashed Potatoes', 'Boil potatoes, mash with butter and milk, season to taste.', 'side'),
       (11, '🍗 Roast Chicken', 'Rub chicken with oil and herbs, roast at 375F until cooked.', 'main course'),
       (12, '🌮 Tacos', 'Cook beef, fill shells, and top with lettuce, tomato, and cheese.', 'main course'),
       (13, '🍜 Ramen', 'Cook noodles, add to hot broth, and top with desired ingredients.', 'main course'),
       (14, '🥙 Falafel Wrap', 'Stuff pita with falafel and vegetables, drizzle with tahini.', 'main course'),
       (15, '🍲 Beef Stew', 'Brown beef, add vegetables and broth, simmer until tender.', 'main course'),
       (16, '🍚 Fried Rice', 'Stir-fry vegetables, add rice and eggs, season with soy sauce.', 'side'),
       (17, '🥒 Greek Salad', 'Mix all ingredients in a bowl and drizzle with olive oil.', 'appetizer'),
       (18, '🍋 Lemon Bars', 'Make crust, pour lemon filling, and bake until set.', 'dessert'),
       (19, '🍗 BBQ Ribs', 'Rub ribs with spices, cook low and slow, baste with sauce.', 'main course'),
       (20, '🍍 Pineapple Upside-Down Cake', 'Layer pineapple and sugar, pour cake batter on top, bake.', 'dessert'),
       (21, '🥕 Carrot Cake', 'Mix ingredients, bake at 350F for 40 minutes.', 'dessert'),
       (22, '🍲 Minestrone Soup', 'Simmer vegetables and pasta in broth until tender.', 'appetizer'),
       (23, '🥖 Garlic Bread', 'Brush bread with garlic butter, bake until golden.', 'side'),
       (24, '🍤 Shrimp Scampi', 'Sauté shrimp in garlic butter, add lemon juice.', 'main course'),
       (25, '🥐 Croissant', 'Roll dough, layer with butter, bake until flaky.', 'dessert'),
       (26, '🥙 Gyro Wrap', 'Fill pita with meat, tomatoes, and tzatziki.', 'main course'),
       (27, '🍄 Mushroom Risotto', 'Sauté mushrooms, cook rice slowly in broth.', 'main course'),
       (28, '🍅 Tomato Basil Soup', 'Simmer tomatoes and basil, blend until smooth.', 'appetizer'),
       (29, '🥩 Beef Tacos', 'Cook beef, fill tortillas with toppings.', 'main course'),
       (30, '🥥 Coconut Macaroons', 'Mix coconut, sugar, and egg whites, bake.', 'dessert'),
       (31, '🍆 Eggplant Parmesan', 'Layer fried eggplant with sauce and cheese, bake.', 'main course'),
       (32, '🍞 French Toast', 'Dip bread in egg mixture, cook until golden.', 'dessert'),
       (33, '🍛 Vegetable Biryani', 'Cook rice with vegetables and spices.', 'main course'),
       (34, '🥔 Potato Salad', 'Boil potatoes, mix with dressing and herbs.', 'side'),
       (35, '🥑 Guacamole', 'Mash avocados, mix with lime juice and salt.', 'appetizer'),
       (36, '🥓 BLT Sandwich', 'Layer bacon, lettuce, and tomato on bread.', 'main course'),
       (37, '🍚 Rice Pudding', 'Cook rice with milk and sugar until thickened.', 'dessert'),
       (38, '🍗 Chicken Wings', 'Season wings, bake until crispy, serve with sauce.', 'appetizer'),
       (39, '🍠 Sweet Potato Fries', 'Slice sweet potatoes, bake with spices until crispy.', 'side'),
       (40, '🍄 Stuffed Mushrooms', 'Fill mushrooms with cheese and herbs, bake.', 'appetizer');


INSERT INTO Ingredient (id, name)
VALUES (1, 'Pasta'),
       (2, 'Eggs'),
       (3, 'Cheese'),
       (4, 'Bacon'),
       (5, 'Pumpkin'),
       (6, 'Carrots'),
       (7, 'Potatoes'),
       (8, 'Flour'),
       (9, 'Sugar'),
       (10, 'Cocoa'),
       (11, 'Romaine lettuce'),
       (12, 'Croutons'),
       (13, 'Parmesan cheese'),
       (14, 'Caesar dressing'),
       (15, 'Pizza dough'),
       (16, 'Tomato sauce'),
       (17, 'Fresh mozzarella'),
       (18, 'Basil'),
       (19, 'Sushi rice'),
       (20, 'Nori'),
       (21, 'Fish'),
       (22, 'Avocado'),
       (23, 'Soy sauce'),
       (24, 'Chicken'),
       (25, 'Curry powder'),
       (26, 'Coconut milk'),
       (27, 'Rice'),
       (28, 'Steak'),
       (29, 'Olive oil'),
       (30, 'Salt'),
       (31, 'Pepper'),
       (32, 'Milk'),
       (33, 'Vanilla extract'),
       (34, 'Cream'),
       (35, 'Herbs'),
       (36, 'Garlic'),
       (37, 'Taco shells'),
       (38, 'Ground beef'),
       (39, 'Lettuce'),
       (40, 'Tomato'),
       (41, 'Ramen noodles'),
       (42, 'Broth'),
       (43, 'Falafel'),
       (44, 'Pita bread'),
       (45, 'Tahini sauce'),
       (46, 'Beef'),
       (47, 'Onion'),
       (48, 'Peas'),
       (49, 'Cucumber'),
       (50, 'Feta cheese'),
       (51, 'Olives'),
       (52, 'Lemons'),
       (53, 'Pork ribs'),
       (54, 'BBQ sauce'),
       (55, 'Pineapple'),
       (56, 'Brown sugar'),
       (57, 'Butter'),
       (58, 'Cake mix'),
       (59, 'Eggplant'),
       (60, 'White bread'),
       (61, 'Breadcrumbs'),
       (62, 'Shrimp'),
       (63, 'Lemon juice'),
       (64, 'Yeast'),
       (65, 'Tomatoes'),
       (66, 'Tzatziki'),
       (67, 'Basil'),
       (68, 'Mushrooms'),
       (69, 'Risotto rice'),
       (70, 'Tortillas'),
       (71, 'Avocados'),
       (72, 'Limes'),
       (73, 'Lettuce'),
       (74, 'Ground chicken'),
       (75, 'Coconut'),
       (76, 'Raisins');


-- Pasta Carbonara
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (1, 1, 200, 'grams'), -- Pasta
       (1, 2, 2, 'pieces'),  -- Eggs
       (1, 3, 50, 'grams'),  -- Cheese
       (1, 4, 100, 'grams'); -- Bacon

-- Pumpkin Soup
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (2, 5, 300, 'grams'), -- Pumpkin
       (2, 6, 2, 'pieces'),  -- Carrots
       (2, 7, 3, 'pieces'); -- Potatoes

-- Chocolate Cake
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (3, 8, 200, 'grams'), -- Flour
       (3, 9, 100, 'grams'), -- Sugar
       (3, 10, 50, 'grams'), -- Cocoa
       (3, 2, 3, 'pieces'); -- Eggs

-- Caesar Salad
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (4, 11, 1, 'head'),   -- Romaine lettuce
       (4, 12, 50, 'grams'), -- Croutons
       (4, 13, 30, 'grams'), -- Parmesan cheese
       (4, 14, 2, 'tbsp'); -- Caesar dressing

-- Margherita Pizza
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (5, 15, 1, 'piece'),   -- Pizza dough
       (5, 16, 100, 'grams'), -- Tomato sauce
       (5, 17, 100, 'grams'), -- Fresh mozzarella
       (5, 18, 5, 'leaves'); -- Basil

-- Sushi Rolls
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (6, 19, 200, 'grams'), -- Sushi rice
       (6, 20, 2, 'sheets'),  -- Nori
       (6, 21, 100, 'grams'), -- Fish
       (6, 22, 1, 'piece'),   -- Avocado
       (6, 23, 2, 'tbsp'); -- Soy sauce

-- Chicken Curry
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (7, 24, 300, 'grams'), -- Chicken
       (7, 25, 2, 'tbsp'),    -- Curry powder
       (7, 26, 200, 'ml'),    -- Coconut milk
       (7, 27, 150, 'grams'); -- Rice

-- Grilled Steak
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (8, 28, 1, 'piece'), -- Steak
       (8, 29, 1, 'tbsp'),  -- Olive oil
       (8, 30, 1, 'tsp'),   -- Salt
       (8, 31, 1, 'tsp'); -- Pepper

-- Vanilla Ice Cream
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (9, 32, 250, 'ml'),   -- Milk
       (9, 9, 100, 'grams'), -- Sugar
       (9, 33, 1, 'tsp'),    -- Vanilla extract
       (9, 34, 200, 'ml'); -- Cream

-- Mashed Potatoes
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (10, 7, 4, 'pieces'), -- Potatoes
       (10, 57, 2, 'tbsp'),  -- Butter
       (10, 32, 100, 'ml'),  -- Milk
       (10, 30, 1, 'tsp'); -- Salt

-- Roast Chicken
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (11, 24, 1, 'whole'), -- Whole chicken
       (11, 29, 2, 'tbsp'),  -- Olive oil
       (11, 35, 1, 'tbsp'),  -- Herbs
       (11, 36, 3, 'cloves'); -- Garlic

-- Tacos
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (12, 37, 3, 'pieces'),  -- Taco shells
       (12, 38, 200, 'grams'), -- Ground beef
       (12, 39, 50, 'grams'),  -- Lettuce
       (12, 40, 1, 'piece'),   -- Tomato
       (12, 3, 30, 'grams'); -- Cheese

-- Ramen
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (13, 41, 200, 'grams'), -- Ramen noodles
       (13, 42, 500, 'ml'); -- Broth

-- Falafel Wrap
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (14, 43, 4, 'pieces'), -- Falafel
       (14, 44, 1, 'piece'),  -- Pita bread
       (14, 39, 50, 'grams'), -- Lettuce
       (14, 40, 1, 'piece'),  -- Tomato
       (14, 45, 2, 'tbsp'); -- Tahini sauce

-- Beef Stew
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (15, 46, 300, 'grams'), -- Beef
       (15, 7, 2, 'pieces'),   -- Potatoes
       (15, 6, 1, 'piece'),    -- Carrots
       (15, 47, 1, 'piece'),   -- Onion
       (15, 42, 500, 'ml'); -- Broth

-- Fried Rice
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (16, 27, 200, 'grams'), -- Rice
       (16, 2, 2, 'pieces'),   -- Eggs
       (16, 48, 50, 'grams'),  -- Peas
       (16, 6, 1, 'piece'),    -- Carrots
       (16, 23, 2, 'tbsp'); -- Soy sauce

-- Greek Salad
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (17, 49, 1, 'piece'),   -- Cucumber
       (17, 40, 2, 'pieces'),  -- Tomato
       (17, 50, 50, 'grams'),  -- Feta cheese
       (17, 51, 10, 'pieces'), -- Olives
       (17, 29, 1, 'tbsp'); -- Olive oil

-- Lemon Bars
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (18, 8, 200, 'grams'),  -- Flour
       (18, 9, 100, 'grams'),  -- Sugar
       (18, 57, 100, 'grams'), -- Butter
       (18, 52, 2, 'pieces'),  -- Lemons
       (18, 2, 3, 'pieces'); -- Eggs

-- BBQ Ribs
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (19, 53, 1, 'kg'),   -- Pork ribs
       (19, 54, 100, 'ml'), -- BBQ sauce
       (19, 30, 1, 'tsp'); -- Salt

-- Pineapple Upside-Down Cake
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (20, 55, 1, 'piece'),   -- Pineapple
       (20, 56, 100, 'grams'), -- Brown sugar
       (20, 57, 50, 'grams'),  -- Butter
       (20, 58, 1, 'box'); -- Cake mix

-- Carrot Cake
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (21, 8, 200, 'grams'), -- Flour
       (21, 9, 150, 'grams'), -- Sugar
       (21, 2, 3, 'pieces'); -- Eggs

-- Minestrone Soup
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (22, 6, 1, 'piece'),    -- Carrots
       (22, 47, 1, 'piece'),   -- Onion
       (22, 41, 100, 'grams'), -- Pasta
       (22, 42, 500, 'ml'); -- Broth

-- Garlic Bread
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (23, 60, 1, 'loaf'), -- White bread
       (23, 36, 2, 'cloves'); -- Garlic

-- Shrimp Scampi
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (24, 62, 200, 'grams'), -- Shrimp
       (24, 63, 1, 'tbsp'); -- Lemon juice

-- Croissant
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (25, 8, 200, 'grams'), -- Flour
       (25, 64, 1, 'tsp'); -- Yeast

-- Gyro Wrap
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (26, 44, 1, 'piece'),   -- Pita bread
       (26, 74, 150, 'grams'), -- Ground chicken
       (26, 66, 50, 'grams'); -- Tzatziki

-- Mushroom Risotto
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (27, 68, 100, 'grams'), -- Mushrooms
       (27, 69, 200, 'grams'), -- Risotto rice
       (27, 42, 500, 'ml'); -- Broth

-- Tomato Basil Soup
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (28, 65, 300, 'grams'), -- Tomatoes
       (28, 67, 5, 'leaves'); -- Basil

-- Beef Tacos
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (29, 46, 200, 'grams'), -- Beef
       (29, 70, 3, 'pieces'); -- Tortillas

-- Coconut Macaroons
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (30, 75, 200, 'grams'), -- Coconut
       (30, 76, 100, 'grams'), -- Sugar
       (30, 2, 3, 'pieces'); -- Eggs

-- Eggplant Parmesan
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (31, 59, 1, 'piece'), -- Eggplant
       (31, 3, 50, 'grams'), -- Cheese
       (31, 61, 50, 'grams'); -- Breadcrumbs

-- French Toast
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (32, 60, 4, 'slices'), -- White bread
       (32, 2, 2, 'pieces'); -- Eggs

-- Vegetable Biryani
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (33, 27, 200, 'grams'), -- Rice
       (33, 6, 1, 'piece'), -- Carrots
       (33, 47, 1, 'piece'); -- Onion

-- Potato Salad
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (34, 7, 4, 'pieces'); -- Potatoes

-- Guacamole
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (35, 71, 2, 'pieces'), -- Avocados
       (35, 72, 1, 'tbsp'); -- Lime juice

-- BLT Sandwich
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (36, 4, 3, 'slices'), -- Bacon
       (36, 73, 2, 'leaves'); -- Lettuce

-- Rice Pudding
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (37, 27, 150, 'grams'), -- Rice
       (37, 32, 500, 'ml'); -- Milk

-- Chicken Wings
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (38, 5, 6, 'pieces'); -- Chicken wings

-- Sweet Potato Fries
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (39, 7, 2, 'pieces'); -- Potatoes

-- Stuffed Mushrooms
INSERT INTO Recipe_Ingredient (recipe_Id, ingredient_Id, quantity, unit)
VALUES (40, 68, 6, 'pieces'), -- Mushrooms
       (40, 3, 30, 'grams'); -- Cheese

