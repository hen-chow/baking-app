class AddMethodToRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :method, :string
  end
end
