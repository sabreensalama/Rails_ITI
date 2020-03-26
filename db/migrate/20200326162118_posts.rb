class Posts < ActiveRecord::Migration[5.0]
  def change
    create_table :Posts do |t|
      t.string :title , :limit=>50 ,:null=>false
      t.string :content, :limit=>50
      t.timestamps
      add_reference :users, :Posts, foreign_key: true
      end

  end
end
