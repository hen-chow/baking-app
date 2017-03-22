class RemoveAddressFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :address, :string
    remove_column :users, :latitude, :float
    remove_column :users, :longitude, :float
    remove_column :users, :last_name, :string
  end
end
