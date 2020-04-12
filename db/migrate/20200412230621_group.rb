class Group < ActiveRecord::Migration[5.0]
  def change
    create_table :Group do |t|
      
      t.string :name

    end
  end
end
