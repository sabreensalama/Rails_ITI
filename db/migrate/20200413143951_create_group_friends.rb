class CreateGroupFriends < ActiveRecord::Migration[5.0]
  def change
    create_table :group_friends do |t|
      t.string :name

      t.timestamps
    end
  end
end
