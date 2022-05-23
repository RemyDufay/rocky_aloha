class AddUserRefToRocks < ActiveRecord::Migration[6.1]
  def change
    add_reference :rocks, :user, null: false, foreign_key: true
  end
end
