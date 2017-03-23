class Recipe < ApplicationRecord
  belongs_to :baking_category
  belongs_to :user
  has_many :ingredients, dependent: :destroy
  has_many :food_items, through: :ingredients
  has_many :reviews
  has_many :directions, dependent: :destroy
  # validates_uniqueness_of :name, scope: :baking_category_id

  def avg_rating(id)

    recipe = Recipe.find(id)
    total_rating = 0

    if !recipe.reviews.empty?
      recipe.reviews.each do |review|
        total_rating += review.rating
      end
      (total_rating / recipe.reviews.count).round(2)
    end
  end

end
