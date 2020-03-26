class Commits < ActiveRecord::Migration[5.0]
  def change
    create_table :Commits do |t|
    t.string :content, :null=>false
    t.timestamps
    add_reference :users, :Commits, foreign_key: true
    add_reference :Posts, :Commits, foreign_key: true
    end
  end
end
