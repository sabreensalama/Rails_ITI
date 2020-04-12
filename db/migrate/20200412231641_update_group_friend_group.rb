class UpdateGroupFriendGroup < ActiveRecord::Migration[5.0]
  def change
    add_reference :GroupFriend, :Group , foreign_key: true

  end
end
