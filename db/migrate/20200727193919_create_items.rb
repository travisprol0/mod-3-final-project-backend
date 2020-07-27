class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :img_url
      t.integer :damage
      t.integer :recipe_id
      t.integer :inventory_id
      t.timestamps
    end
  end
end
