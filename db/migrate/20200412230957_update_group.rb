class UpdateGroup < ActiveRecord::Migration[5.0]
  def change
    add_reference :Group, :User , foreign_key: true

  end
end
