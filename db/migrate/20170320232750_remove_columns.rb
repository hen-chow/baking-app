class RemoveColumns < ActiveRecord::Migration[5.0]
  def change
    remove_column :recipes, :method
  end
end
