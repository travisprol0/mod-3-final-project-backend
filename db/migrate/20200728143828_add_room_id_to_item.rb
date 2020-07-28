class AddRoomIdToItem < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :room_id, :integer
  end
end
