class AddColumnToBakingCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :baking_categories, :image, :string
  end
end
