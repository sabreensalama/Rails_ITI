class Post < ActiveRecord::Migration[5.0]
  def change
    create_table :Post do |t|
      t.string :title , :limit=>50 ,:null=>false
      t.string :content, :limit=>50
      t.timestamps
      add_reference :user, :Post, foreign_key: true
      end

  end
end
