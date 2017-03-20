class AddColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :prep_time, :integer
  end
end
