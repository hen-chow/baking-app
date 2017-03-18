class AddCookingTimeToRecipe < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :cooking_time, :integer
  end
end
