class FoodItem < ApplicationRecord
  has_many :recipes, through: :ingredients
end
