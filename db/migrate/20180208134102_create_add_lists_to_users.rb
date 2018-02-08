class CreateAddListsToUsers < ActiveRecord::Migration
  def change
    create_table :add_lists_to_users do |t|

      t.timestamps null: false
    end
  end
end
