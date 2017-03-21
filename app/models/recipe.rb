class Recipe < ApplicationRecord
  belongs_to :baking_category
  belongs_to :user
  has_many :ingredients, dependent: :destroy
  has_many :food_items, through: :ingredients
  has_many :reviews
  has_many :directions, dependent: :destroy
  # validates_uniqueness_of :name, scope: :baking_category_id
end
