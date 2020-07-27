class CreateAdvancedItems < ActiveRecord::Migration[6.0]
  def change
    create_table :advanced_items do |t|
      t.string :name
      t.integer :recipe_id
      t.string :img_url
      t.integer :inventory_id
      t.integer :damage
      t.timestamps
    end
  end
end
