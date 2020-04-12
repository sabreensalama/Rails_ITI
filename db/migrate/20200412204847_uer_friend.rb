class UerFriend < ActiveRecord::Migration[5.0]
  def change
    create_table :Friend do |t|
      t.boolean :staus , :default => false

    end
  end
end
