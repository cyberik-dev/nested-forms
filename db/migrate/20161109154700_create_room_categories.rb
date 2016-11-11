class CreateRoomCategories < ActiveRecord::Migration
  def change
    create_table :room_categories do |t|
      t.string :name
      t.references :hotel

      t.timestamps
    end
    add_index :room_categories, :hotel_id
  end
end
