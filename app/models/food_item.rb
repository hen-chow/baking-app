class FoodItem < ApplicationRecord
  has_many :recipes, through: :ingredients
  validates_uniqueness_of :name, :case_sensitive => false 
end
