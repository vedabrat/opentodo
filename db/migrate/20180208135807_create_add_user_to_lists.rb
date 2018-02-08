class CreateAddUserToLists < ActiveRecord::Migration
  def change
    create_table :add_user_to_lists do |t|
      t.string :lists
      t.string :user_id
      t.string :integer
      t.timestamps null: false
    end
  end
end
