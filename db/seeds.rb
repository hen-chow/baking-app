# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Testing that seed list works!"

User.destroy_all
FoodItem.destroy_all
BakingCategory.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
Direction.destroy_all
Review.destroy_all


users = [
  {
    name: "Admin",
    email: "hen@recipes.com",
    password: "password",
    admin: "true"
  },
  {
    name: "Jane Doe",
    email: "jane@recipes.com",
    password: "password",
  },
  {
    name: "Hen",
    email: "admin@test.com",
    password: "password"
  },
  {
    name: "Kylie",
    email: "ilovebaking@test.com",
    password: "password"
  }
]

created_users = []

users.each do |user|
  created_users << User.create(name:
  user[:name], email: user[:email], password: user[:password], admin: user[:admin])
  # puts new_user.errors.messages
end

puts "Users created"

baking_category_1 = BakingCategory.create(name: "Brownies", image: "brownies-category.jpg")
baking_category_2 = BakingCategory.create(name: "Muffins", image: "muffins-category.png")
baking_category_3 = BakingCategory.create(name: "Cupcakes", image: "cupcakes-category.jpg")
baking_category_4 = BakingCategory.create(name: "Pies and Tarts", image: "pies-category.jpg")
baking_category_5 = BakingCategory.create(name: "Cakes", image: "cakes-category.jpg")
baking_category_6 = BakingCategory.create(name: "Biscuits", image: "biscuits-category.jpg")

puts "Baking categories created"

recipe_1 = Recipe.create(name: "Triple Chocolate Brownies", skill_level: 3, prep_time: 20, cooking_time: 50, user_id: created_users[1].id, baking_category_id: baking_category_1.id, image: "brownies.jpg")
recipe_2 = Recipe.create(name: "Classic Chocolate Brownies", skill_level: 2, prep_time: 15, cooking_time: 30, user_id: created_users[2].id, baking_category_id: baking_category_1.id, image: "brownies.jpg")
recipe_3 = Recipe.create(name: "Blueberry Muffins", skill_level: 2, prep_time: 15, cooking_time: 25, user_id: created_users[0].id, baking_category_id: baking_category_2.id, image: "coconut-and-raspberry-muffins.jpg")
recipe_4 = Recipe.create(name: "Banana Muffins", skill_level: 2, prep_time: 20, cooking_time: 25, user_id: created_users[1].id, baking_category_id: baking_category_2.id, image: "coconut-and-raspberry-muffins.jpg")
recipe_5 = Recipe.create(name: "Vanilla Cupcakes", skill_level: 3, prep_time: 30, cooking_time: 45, user_id: created_users[2].id, baking_category_id: baking_category_3.id, image: "strawberry-cupcakes.jpg")
recipe_6 = Recipe.create(name: "Red Velvet Cupcakes", skill_level: 4, prep_time: 30, cooking_time: 45, user_id: created_users[0].id, baking_category_id: baking_category_3.id, image: "strawberry-cupcakes.jpg")
recipe_7 = Recipe.create(name: "Apple Pie", skill_level: 3, prep_time: 30, cooking_time: 25, user_id: created_users[1].id, baking_category_id: baking_category_4.id, image: "pies.jpg")
recipe_8 = Recipe.create(name: "Banoffee Pie", skill_level: 3, prep_time: 40, cooking_time: 35, user_id: created_users[2].id, baking_category_id: baking_category_4.id, image: "pies.jpg")
recipe_9 = Recipe.create(name: "Strawberry Sponge Cake", skill_level: 3, prep_time: 30, cooking_time: 40, user_id: created_users[0].id, baking_category_id: baking_category_5.id, image: "strawberry-sponge-cake.jpg")
recipe_10 = Recipe.create(name: "Chocolate Mud Cake", skill_level: 3.5, prep_time: 30, cooking_time: 50, user_id: created_users[1].id, baking_category_id: baking_category_5.id, image: "chocolate-mud-cake.jpg")
recipe_11 = Recipe.create(name: "Black Forest Cake", skill_level: 4, prep_time: 45, cooking_time: 50, user_id: created_users[2].id, baking_category_id: baking_category_5.id, image: "black-forest-cake.jpg")
recipe_12 = Recipe.create(name: "Chocolate Chip Cookies", skill_level: 2, prep_time: 15, cooking_time: 35, user_id: created_users[0].id, baking_category_id: baking_category_6.id, image: "chocolate-chip-cookies.jpg")
recipe_13 = Recipe.create(name: "Anzac Biscuits", skill_level: 2, prep_time: 10, cooking_time: 35, user_id: created_users[1].id, baking_category_id: baking_category_6.id, image: "anzac-biscuits.jpg")

puts "Recipes created"

food_item_1 = FoodItem.create(name: "egg")
food_item_2 = FoodItem.create(name: "eggs")
food_item_3 = FoodItem.create(name: "plain flour")
food_item_4 = FoodItem.create(name: "self-raising flour")
food_item_5 = FoodItem.create(name: "milk")
food_item_6 = FoodItem.create(name: "water")
food_item_7 = FoodItem.create(name: "brown sugar")
food_item_8 = FoodItem.create(name: "caster sugar")
food_item_9 = FoodItem.create(name: "butter")
food_item_10 = FoodItem.create(name: "milk chocolate")
food_item_11 = FoodItem.create(name: "cream")
food_item_12 = FoodItem.create(name: "strawberries")
food_item_13 = FoodItem.create(name: "chocolate chips")
food_item_14 = FoodItem.create(name: "blueberries")
food_item_15 = FoodItem.create(name: "vegetable oil")
food_item_16 = FoodItem.create(name: "bananas")
food_item_17 = FoodItem.create(name: "raspberries")
food_item_18 = FoodItem.create(name: "desiccated coconut")
food_item_19 = FoodItem.create(name: "white chocolate")
food_item_20 = FoodItem.create(name: "dark chocolate")
food_item_21 = FoodItem.create(name: "cocoa powder")
food_item_22 = FoodItem.create(name: "vanilla extract")
food_item_23 = FoodItem.create(name: "apples")
food_item_24 = FoodItem.create(name: "oats")

puts "Food items created"

# Recipe_1 seed ingredients
ingredient_6 = Ingredient.create(recipe_id: recipe_1.id, food_item_id: food_item_2.id, qty: 2, unit: "")
ingredient_7 = Ingredient.create(recipe_id: recipe_1.id, food_item_id: food_item_10.id, qty: 50, unit: "g")
ingredient_8 = Ingredient.create(recipe_id: recipe_1.id, food_item_id: food_item_19.id, qty: 50, unit: "g")
ingredient_9 = Ingredient.create(recipe_id: recipe_1.id, food_item_id: food_item_20.id, qty: 50, unit: "g")
ingredient_10 = Ingredient.create(recipe_id: recipe_1.id, food_item_id: food_item_9.id, qty: 150, unit: "g")
ingredient_11 = Ingredient.create(recipe_id: recipe_1.id, food_item_id: food_item_3.id, qty: 1.5, unit: "cup")

# Recipe_2 seed ingredients
ingredient_1 = Ingredient.create(recipe_id: recipe_2.id, food_item_id: food_item_2.id, qty: 2, unit: "")
ingredient_2 = Ingredient.create(recipe_id: recipe_2.id, food_item_id: food_item_3.id, qty: 1.5, unit: "cup")
ingredient_3 = Ingredient.create(recipe_id: recipe_2.id, food_item_id: food_item_5.id, qty: 1, unit: "cup")
ingredient_4 = Ingredient.create(recipe_id: recipe_2.id, food_item_id: food_item_9.id, qty: 150, unit: "g")
ingredient_5 = Ingredient.create(recipe_id: recipe_2.id, food_item_id: food_item_21.id, qty: 0.5, unit: "cup")

# Recipe_3 seed ingredients
ingredient_12 = Ingredient.create(recipe_id: recipe_3.id, food_item_id: food_item_2.id, qty: 2, unit: "")
ingredient_13 = Ingredient.create(recipe_id: recipe_3.id, food_item_id: food_item_3.id, qty: 2, unit: "cup")
ingredient_14 = Ingredient.create(recipe_id: recipe_3.id, food_item_id: food_item_8.id, qty: 50, unit: "g")
ingredient_15 = Ingredient.create(recipe_id: recipe_3.id, food_item_id: food_item_5.id, qty: 1, unit: "cup")
ingredient_16 = Ingredient.create(recipe_id: recipe_3.id, food_item_id: food_item_9.id, qty: 150, unit: "g")
ingredient_17 = Ingredient.create(recipe_id: recipe_3.id, food_item_id: food_item_14.id, qty: 1, unit: "cup")

# Recipe_4 seed ingredients
ingredient_18 = Ingredient.create(recipe_id: recipe_4.id, food_item_id: food_item_2.id, qty: 2, unit: "")
ingredient_19 = Ingredient.create(recipe_id: recipe_4.id, food_item_id: food_item_3.id, qty: 2, unit: "cup")
ingredient_20 = Ingredient.create(recipe_id: recipe_4.id, food_item_id: food_item_7.id, qty: 50, unit: "g")
ingredient_21 = Ingredient.create(recipe_id: recipe_4.id, food_item_id: food_item_5.id, qty: 1, unit: "cup")
ingredient_22 = Ingredient.create(recipe_id: recipe_4.id, food_item_id: food_item_9.id, qty: 150, unit: "g")
ingredient_23 = Ingredient.create(recipe_id: recipe_4.id, food_item_id: food_item_16.id, qty: 3, unit: "")

# Recipe_5 seed ingredients
ingredient_24 = Ingredient.create(recipe_id: recipe_5.id, food_item_id: food_item_2.id, qty: 2, unit: "")
ingredient_25 = Ingredient.create(recipe_id: recipe_5.id, food_item_id: food_item_4.id, qty: 2, unit: "cup")
ingredient_26 = Ingredient.create(recipe_id: recipe_5.id, food_item_id: food_item_8.id, qty: 50, unit: "g")
ingredient_27 = Ingredient.create(recipe_id: recipe_5.id, food_item_id: food_item_5.id, qty: 1, unit: "cup")
ingredient_28 = Ingredient.create(recipe_id: recipe_5.id, food_item_id: food_item_9.id, qty: 150, unit: "g")
ingredient_29 = Ingredient.create(recipe_id: recipe_5.id, food_item_id: food_item_2.id, qty: 1, unit: "tsp")

# Recipe_6 seed ingredients
ingredient_30 = Ingredient.create(recipe_id: recipe_6.id, food_item_id: food_item_2.id, qty: 2, unit: "")
ingredient_31 = Ingredient.create(recipe_id: recipe_6.id, food_item_id: food_item_3.id, qty: 2, unit: "cup")
ingredient_32 = Ingredient.create(recipe_id: recipe_6.id, food_item_id: food_item_8.id, qty: 50, unit: "g")
ingredient_33 = Ingredient.create(recipe_id: recipe_6.id, food_item_id: food_item_5.id, qty: 1, unit: "cup")
ingredient_34 = Ingredient.create(recipe_id: recipe_6.id, food_item_id: food_item_9.id, qty: 150, unit: "g")
ingredient_35 = Ingredient.create(recipe_id: recipe_6.id, food_item_id: food_item_21.id, qty: 1, unit: "cup")

# Recipe_7 seed ingredients
ingredient_36 = Ingredient.create(recipe_id: recipe_7.id, food_item_id: food_item_2.id, qty: 2, unit: "")
ingredient_37 = Ingredient.create(recipe_id: recipe_7.id, food_item_id: food_item_3.id, qty: 2, unit: "cup")
ingredient_38 = Ingredient.create(recipe_id: recipe_7.id, food_item_id: food_item_8.id, qty: 50, unit: "g")
ingredient_39 = Ingredient.create(recipe_id: recipe_7.id, food_item_id: food_item_5.id, qty: 1, unit: "cup")
ingredient_40 = Ingredient.create(recipe_id: recipe_7.id, food_item_id: food_item_9.id, qty: 150, unit: "g")
ingredient_41 = Ingredient.create(recipe_id: recipe_7.id, food_item_id: food_item_23.id, qty: 4, unit: "")

# Recipe_8 seed ingredients
ingredient_42 = Ingredient.create(recipe_id: recipe_8.id, food_item_id: food_item_2.id, qty: 2, unit: "")
ingredient_43 = Ingredient.create(recipe_id: recipe_8.id, food_item_id: food_item_3.id, qty: 2, unit: "cup")
ingredient_44 = Ingredient.create(recipe_id: recipe_8.id, food_item_id: food_item_7.id, qty: 150, unit: "g")
ingredient_45 = Ingredient.create(recipe_id: recipe_8.id, food_item_id: food_item_5.id, qty: 1, unit: "cup")
ingredient_46 = Ingredient.create(recipe_id: recipe_8.id, food_item_id: food_item_9.id, qty: 150, unit: "g")
ingredient_47 = Ingredient.create(recipe_id: recipe_8.id, food_item_id: food_item_16.id, qty: 4, unit: "")

# Recipe_9 seed ingredients
ingredient_48 = Ingredient.create(recipe_id: recipe_9.id, food_item_id: food_item_2.id, qty: 4, unit: "")
ingredient_49 = Ingredient.create(recipe_id: recipe_9.id, food_item_id: food_item_4.id, qty: 2, unit: "cup")
ingredient_50 = Ingredient.create(recipe_id: recipe_9.id, food_item_id: food_item_8.id, qty: 50, unit: "g")
ingredient_51 = Ingredient.create(recipe_id: recipe_9.id, food_item_id: food_item_5.id, qty: 1, unit: "cup")
ingredient_52 = Ingredient.create(recipe_id: recipe_9.id, food_item_id: food_item_9.id, qty: 150, unit: "g")
ingredient_53 = Ingredient.create(recipe_id: recipe_9.id, food_item_id: food_item_12.id, qty: 1, unit: "cup")

# Recipe_10 seed ingredients
ingredient_54 = Ingredient.create(recipe_id: recipe_10.id, food_item_id: food_item_2.id, qty: 4, unit: "")
ingredient_55 = Ingredient.create(recipe_id: recipe_10.id, food_item_id: food_item_4.id, qty: 2, unit: "cup")
ingredient_56 = Ingredient.create(recipe_id: recipe_10.id, food_item_id: food_item_8.id, qty: 50, unit: "g")
ingredient_57 = Ingredient.create(recipe_id: recipe_10.id, food_item_id: food_item_5.id, qty: 1, unit: "cup")
ingredient_58 = Ingredient.create(recipe_id: recipe_10.id, food_item_id: food_item_9.id, qty: 150, unit: "g")
ingredient_59 = Ingredient.create(recipe_id: recipe_10.id, food_item_id: food_item_20.id, qty: 150, unit: "g")

# Recipe_11 seed ingredients
ingredient_60 = Ingredient.create(recipe_id: recipe_11.id, food_item_id: food_item_2.id, qty: 4, unit: "")
ingredient_61 = Ingredient.create(recipe_id: recipe_11.id, food_item_id: food_item_4.id, qty: 2, unit: "cup")
ingredient_62 = Ingredient.create(recipe_id: recipe_11.id, food_item_id: food_item_8.id, qty: 50, unit: "g")
ingredient_63 = Ingredient.create(recipe_id: recipe_11.id, food_item_id: food_item_5.id, qty: 1, unit: "cup")
ingredient_64 = Ingredient.create(recipe_id: recipe_11.id, food_item_id: food_item_9.id, qty: 150, unit: "g")
ingredient_65 = Ingredient.create(recipe_id: recipe_11.id, food_item_id: food_item_20.id, qty: 150, unit: "g")
ingredient_66 = Ingredient.create(recipe_id: recipe_11.id, food_item_id: food_item_11.id, qty: 1.5, unit: "cup")

# Recipe_12 seed ingredients
ingredient_60 = Ingredient.create(recipe_id: recipe_12.id, food_item_id: food_item_2.id, qty: 4, unit: "")
ingredient_61 = Ingredient.create(recipe_id: recipe_12.id, food_item_id: food_item_4.id, qty: 1.5, unit: "cup")
ingredient_62 = Ingredient.create(recipe_id: recipe_12.id, food_item_id: food_item_7.id, qty: 75, unit: "g")
ingredient_63 = Ingredient.create(recipe_id: recipe_12.id, food_item_id: food_item_5.id, qty: 1, unit: "cup")
ingredient_64 = Ingredient.create(recipe_id: recipe_12.id, food_item_id: food_item_9.id, qty: 150, unit: "g")
ingredient_65 = Ingredient.create(recipe_id: recipe_12.id, food_item_id: food_item_20.id, qty: 150, unit: "g")
ingredient_66 = Ingredient.create(recipe_id: recipe_12.id, food_item_id: food_item_13.id, qty: 1.5, unit: "cup")

# Recipe_13 seed ingredients
ingredient_60 = Ingredient.create(recipe_id: recipe_13.id, food_item_id: food_item_2.id, qty: 4, unit: "")
ingredient_61 = Ingredient.create(recipe_id: recipe_13.id, food_item_id: food_item_3.id, qty: 1.5, unit: "cup")
ingredient_62 = Ingredient.create(recipe_id: recipe_13.id, food_item_id: food_item_7.id, qty: 75, unit: "g")
ingredient_63 = Ingredient.create(recipe_id: recipe_13.id, food_item_id: food_item_6.id, qty: 1, unit: "cup")
ingredient_64 = Ingredient.create(recipe_id: recipe_13.id, food_item_id: food_item_9.id, qty: 150, unit: "g")
ingredient_65 = Ingredient.create(recipe_id: recipe_13.id, food_item_id: food_item_18.id, qty: 1, unit: "cup")
ingredient_66 = Ingredient.create(recipe_id: recipe_13.id, food_item_id: food_item_24.id, qty: 1.5, unit: "cup")

puts "Ingredients created"

direction_1 = Direction.create(step: 1, recipe_id: recipe_1.id, instruction: "Preheat oven at 180 degrees. Line your baking tin with greased baking powder. Mix flour in the bowl.")
direction_2 = Direction.create(step: 1, recipe_id: recipe_2.id, instruction: "Preheat oven at 180 degrees. Line your baking tin with greased baking powder. Mix flour in the bowl.")
direction_3 = Direction.create(step: 1, recipe_id: recipe_3.id, instruction: "Preheat oven at 180 degrees. Line your baking tin with greased baking powder. Mix flour in the bowl.")
direction_4 = Direction.create(step: 1, recipe_id: recipe_4.id, instruction: "Preheat oven at 180 degrees. Line your baking tin with greased baking powder. Mix flour in the bowl.")
direction_5 = Direction.create(step: 1, recipe_id: recipe_5.id, instruction: "Preheat oven at 180 degrees. Line your baking tin with greased baking powder. Mix flour in the bowl.")
direction_6 = Direction.create(step: 1, recipe_id: recipe_6.id, instruction: "Preheat oven at 180 degrees. Line your baking tin with greased baking powder. Mix flour in the bowl.")
direction_7 = Direction.create(step: 1, recipe_id: recipe_7.id, instruction: "Preheat oven at 180 degrees. Line your baking tin with greased baking powder. Mix flour in the bowl.")
direction_8 = Direction.create(step: 1, recipe_id: recipe_8.id, instruction: "Preheat oven at 180 degrees. Line your baking tin with greased baking powder. Mix flour in the bowl.")
direction_9 = Direction.create(step: 1, recipe_id: recipe_9.id, instruction: "Preheat oven at 180 degrees. Line your baking tin with greased baking powder. Mix flour in the bowl.")
direction_10 = Direction.create(step: 1, recipe_id: recipe_10.id, instruction: "Preheat oven at 180 degrees. Line your baking tin with greased baking powder. Mix flour in the bowl.")
direction_11 = Direction.create(step: 1, recipe_id: recipe_11.id, instruction: "Preheat oven at 180 degrees. Line your baking tin with greased baking powder. Mix flour in the bowl.")
direction_12 = Direction.create(step: 1, recipe_id: recipe_12.id, instruction: "Preheat oven at 180 degrees. Line your baking tin with greased baking powder. Mix flour in the bowl.")
direction_13 = Direction.create(step: 1, recipe_id: recipe_13.id, instruction: "Preheat oven at 180 degrees. Line your baking tin with greased baking powder. Mix flour in the bowl.")
direction_14 = Direction.create(step: 1, recipe_id: recipe_1.id, instruction: "Blend and mix dry ingredients.")
direction_15 = Direction.create(step: 1, recipe_id: recipe_2.id, instruction: "Blend and mix dry ingredients.")
direction_16 = Direction.create(step: 1, recipe_id: recipe_3.id, instruction: "Blend and mix dry ingredients.")
direction_17 = Direction.create(step: 1, recipe_id: recipe_4.id, instruction: "Blend and mix dry ingredients.")
direction_18 = Direction.create(step: 1, recipe_id: recipe_5.id, instruction: "Blend and mix dry ingredients.")
direction_19 = Direction.create(step: 1, recipe_id: recipe_6.id, instruction: "Blend and mix dry ingredients.")
direction_20 = Direction.create(step: 1, recipe_id: recipe_7.id, instruction: "Blend and mix dry ingredients.")
direction_21 = Direction.create(step: 1, recipe_id: recipe_8.id, instruction: "Blend and mix dry ingredients.")
direction_22 = Direction.create(step: 1, recipe_id: recipe_9.id, instruction: "Blend and mix dry ingredients.")
direction_23 = Direction.create(step: 1, recipe_id: recipe_10.id, instruction: "Blend and mix dry ingredients.")
direction_24 = Direction.create(step: 1, recipe_id: recipe_11.id, instruction: "Blend and mix dry ingredients.")
direction_25 = Direction.create(step: 1, recipe_id: recipe_12.id, instruction: "Blend and mix dry ingredients.")
direction_26 = Direction.create(step: 1, recipe_id: recipe_13.id, instruction: "Blend and mix dry ingredients.")
direction_27 = Direction.create(step: 1, recipe_id: recipe_1.id, instruction: "Add wet ingredients and stir. Pour into pan and bake.")
direction_28 = Direction.create(step: 1, recipe_id: recipe_2.id, instruction: "Add wet ingredients and stir. Pour into pan and bake.")
direction_29 = Direction.create(step: 1, recipe_id: recipe_3.id, instruction: "Add wet ingredients and stir. Pour into pan and bake.")
direction_30 = Direction.create(step: 1, recipe_id: recipe_4.id, instruction: "Add wet ingredients and stir. Pour into pan and bake.")
direction_31 = Direction.create(step: 1, recipe_id: recipe_5.id, instruction: "Add wet ingredients and stir. Pour into pan and bake.")
direction_32 = Direction.create(step: 1, recipe_id: recipe_6.id, instruction: "Add wet ingredients and stir. Pour into pan and bake.")
direction_33 = Direction.create(step: 1, recipe_id: recipe_7.id, instruction: "Add wet ingredients and stir. Pour into pan and bake.")
direction_34 = Direction.create(step: 1, recipe_id: recipe_8.id, instruction: "Add wet ingredients and stir. Pour into pan and bake.")
direction_35 = Direction.create(step: 1, recipe_id: recipe_9.id, instruction: "Add wet ingredients and stir. Pour into pan and bake.")
direction_36 = Direction.create(step: 1, recipe_id: recipe_10.id, instruction: "Add wet ingredients and stir. Pour into pan and bake.")
direction_37 = Direction.create(step: 1, recipe_id: recipe_11.id, instruction: "Add wet ingredients and stir. Pour into pan and bake.")
direction_38 = Direction.create(step: 1, recipe_id: recipe_12.id, instruction: "Add wet ingredients and stir. Pour into pan and bake.")
direction_39 = Direction.create(step: 1, recipe_id: recipe_13.id, instruction: "Add wet ingredients and stir. Pour into pan and bake.")

puts "Directions created"

review_1 = Review.create(user_id: created_users[3].id, rating: 4, message: "Fantastic recipe! Easy to make :)", recipe_id: recipe_1.id)
review_2 = Review.create(user_id: created_users[3].id, rating: 3.5, message: "We tried this last week - my family loved it!", recipe_id: recipe_2.id)
review_3 = Review.create(user_id: created_users[3].id, rating: 2.5, message: "Time consuming - but pretty tasty", recipe_id: recipe_3.id)
review_4 = Review.create(user_id: created_users[3].id, rating: 5, message: "5 out of 5! We all loved it. I'll definitely make this again", recipe_id: recipe_4.id)
review_5 = Review.create(user_id: created_users[3].id, rating: 4, message: "Fantastic recipe! Easy to make :)", recipe_id: recipe_5.id)
review_6 = Review.create(user_id: created_users[3].id, rating: 3.5, message: "We tried this last week - my family loved it!", recipe_id: recipe_6.id)
review_7 = Review.create(user_id: created_users[3].id, rating: 2.5, message: "Time consuming - but pretty tasty", recipe_id: recipe_7.id)
review_8 = Review.create(user_id: created_users[3].id, rating: 5, message: "5 out of 5! We all loved it. I'll definitely make this again", recipe_id: recipe_8.id)
review_9 = Review.create(user_id: created_users[3].id, rating: 4, message: "Fantastic recipe! Easy to make :)", recipe_id: recipe_9.id)
review_10 = Review.create(user_id: created_users[3].id, rating: 3.5, message: "We tried this last week - my family loved it!", recipe_id: recipe_10.id)
review_11 = Review.create(user_id: created_users[3].id, rating: 2.5, message: "Time consuming - but pretty tasty", recipe_id: recipe_11.id)
review_12 = Review.create(user_id: created_users[3].id, rating: 5, message: "5 out of 5! We all loved it. I'll definitely make this again", recipe_id: recipe_12.id)
review_13 = Review.create(user_id: created_users[3].id, rating: 5, message: "5 out of 5! We all loved it. I'll definitely make this again", recipe_id: recipe_13.id)

puts "Reviews created"


puts "Seed file updated - time to get baking!"
