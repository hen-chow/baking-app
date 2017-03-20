class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :reviews, :review, :message
  end
end
