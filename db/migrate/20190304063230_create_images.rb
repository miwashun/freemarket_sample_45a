class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :image_url, null: false
      t.references :item,  null: false
      t.timestamps
    end
  end
end
