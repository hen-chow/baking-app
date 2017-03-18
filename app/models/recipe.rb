class Recipe < ApplicationRecord
  belongs_to :baking_category
  belongs_to :user
  has_many :ingredients
  has_many :food_items, through: :ingredients
  has_many :reviews
end
