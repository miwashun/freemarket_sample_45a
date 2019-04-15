class ChangeColumnToItems < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :prefecture_id, :integer, null: false
    change_column :items, :condition_id, :integer, null: false
    change_column :items, :shipping_date_id, :integer, null: false
    change_column :items, :burden_id, :integer, null: false
  end
end
