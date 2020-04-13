class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :Fname
      t.string :Lname
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
