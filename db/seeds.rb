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

users = [
  {
    first_name: "Admin",
    last_name: "Admin",
    email: "hen@recipes.com",
    password: "password",
    admin: "true"
  },
  {
    first_name: "Jane",
    last_name: "Doe",
    email: "jane@recipes.com",
    password: "password",
  },
  {
    first_name: "Hen",
    last_name: "Test",
    email: "admin@test.com",
    password: "password"
  }
]

baking_categories = [
  {
    name: "Cakes",
    recipes: [{
        name: "Strawberry Sponge Cake",
        skill_level: 3,
        cooking_time: 40,
        user_id: 1,
      },
      {
        name: "Chocolate Mud Cake",
        skill_level: 3.5,
        cooking_time: 110,
        user_id: 1
      },
      {
        name: "Black Forest Cake",
        skill_level: 4,
        cooking_time: 120,
        user_id: 1
      }
    ]
  },
  {
    name: "Biscuits",
    recipes: [{
        name: "Chocolate Chip Cookies",
        skill_level: 2,
        cooking_time: 35,
        user_id: 1
      },
      {
        name: "Anzac Biscuits",
        skill_level: 2,
        cooking_time: 45,
        user_id: 1
      },
      {
        name: "Brownies and Bars"
      },
      {
        name: "Cupcakes"
      },
      {
        name: "Pies and Tarts"
      },
      {
        name: "Muffins"
      }
    ]
  }
]

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

users.each do |user|
  new_user = User.create(first_name:
  user[:first_name], last_name: user[:last_name], email: user[:email], password_digest: user[:password_digest], admin: user[:admin])
end

food_items.each do |food_item|
  new_food_item = FoodItem.create(name: food_item[:name])
end

baking_categories.each do |baking_category|
  new_baking_category = BakingCategory.create(name: baking_category[:name])

  baking_category[:recipes].each do |recipe|
    new_recipe = Recipe.create(name: recipe[:name],
    skill_level: recipe[:skill_level], cooking_time: recipe[:cooking_time], user_id: recipe[:user_id], baking_category_id: new_baking_category.id)
  end
end

puts "Seed file updated - time to get baking!"
