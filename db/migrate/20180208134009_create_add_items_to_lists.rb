class CreateAddItemsToLists < ActiveRecord::Migration
  def change
    create_table :add_items_to_lists do |t|
      t.timestamps null: false
    end
  end
end
