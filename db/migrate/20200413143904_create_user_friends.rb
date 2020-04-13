class CreateUserFriends < ActiveRecord::Migration[5.0]
  def change
    create_table :user_friends do |t|
      t.string :statud

      t.timestamps
    end
  end
end
