class AddBurdenIdToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :burden_id, :integer
  end
end
