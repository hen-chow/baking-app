class FoodItem < ApplicationRecord
  has_many :recipes, through: :ingredients
  validates_uniqueness_of :name
end
