class UpdateFriend < ActiveRecord::Migration[5.0]
  def change
    add_reference :Friend, :User , foreign_key: true

  end
end
