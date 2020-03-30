class Commit < ActiveRecord::Migration[5.0]
  def change
    create_table :Commit do |t|
    t.string :content, :null=>false
    t.timestamps
    add_reference :user, :Commit, foreign_key: true
    add_reference :Post, :Commit, foreign_key: true
    end
  end
end
