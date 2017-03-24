# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Testing that this works!"

User.destroy_all
FoodItem.destroy_all
BakingCategory.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
Direction.destroy_all
Review.destroy_all

# kjsdhfkjzdhjfsdfsd.add

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
  }
]

created_users = []

users.each do |user|
  created_users << User.create(name:
  user[:name], email: user[:email], password: user[:password], admin: user[:admin])
  # puts new_user.errors.messages
end


food_items = [
  {
    name: "egg"
  },
  {
    name: "eggs"
  },
  {
    name: "chocolate"
  },
  {
    name: "flour"
  },
  {
    name: "butter"
  },
  {
    name: "milk"
  }
]

food_items.each do |food_item|
  new_food_item = FoodItem.create(name: food_item[:name])
  puts new_food_item.errors.messages
end

baking_categories = [
  {
    name: "Cakes",
    image: "cakes-category.jpg",
    recipes: [{
        name: "Strawberry Sponge Cake",
        skill_level: 3,
        cooking_time: 40,
        user_id: created_users[0].id
        # image: "strawberry-sponge-cake.jpg"
      },
      {
        name: "Chocolate Mud Cake",
        skill_level: 3.5,
        cooking_time: 110,
        user_id: created_users[1].id
        # image: "chocolate-mud-cake.jpg"
      },
      {
        name: "Black Forest Cake",
        skill_level: 4,
        cooking_time: 120,
        user_id: created_users[2].id
        # image: "black-forest-cake.jpg"
      }
    ]
  },
  {
    name: "Biscuits",
    image: "biscuits_category.jpg",
    recipes: [{
        name: "Chocolate Chip Cookies",
        skill_level: 2,
        cooking_time: 35,
        user_id: created_users[1].id,
        # image: "chocolate-chip-cookies.jpg
      },
      {
        name: "Anzac Biscuits",
        skill_level: 2,
        cooking_time: 45,
        user_id: created_users[2].id,
        # image: "anzac-biscuits.jpg
      }
    ]
  },
]

BakingCategory.create(name: "Brownies", image: "brownies-category.jpg")
BakingCategory.create(name: "Muffins", image: "muffins-category.png")
BakingCategory.create(name: "Cupcakes", image: "cupcakes-category.jpg")
BakingCategory.create(name: "Pies and Tarts", image: "pies-category.jpg")

baking_categories.each do |baking_category|
  new_baking_category = BakingCategory.create(name: baking_category[:name], image: baking_category[:image])
  puts new_baking_category.errors.messages


  baking_category[:recipes].each do |recipe|
    new_recipe = Recipe.create(name: recipe[:name],
    skill_level: recipe[:skill_level], cooking_time: recipe[:cooking_time], user_id: recipe[:user_id], image: recipe[:image], baking_category_id: new_baking_category.id)
    puts new_recipe.errors.messages

  end
end

puts "Seed file updated - time to get baking!"
