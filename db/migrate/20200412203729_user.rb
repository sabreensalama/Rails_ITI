class User < ActiveRecord::Migration[5.0]
  def change
    create_table :User do |t|
    t.string :Fname
    t.text :Lname
    t.text :email , :null => false
    t.text :password , :null => false
    t.timestamps
  end
end

end
