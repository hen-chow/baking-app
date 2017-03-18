class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :image
      t.integer :baking_category_id
      t.integer :skill_level
      t.integer :user_id

      t.timestamps
    end
  end
end
