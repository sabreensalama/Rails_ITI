class UpdateGroupFriend < ActiveRecord::Migration[5.0]
  def change
    add_reference :GroupFriend, :Friend , foreign_key: true

  end
end
