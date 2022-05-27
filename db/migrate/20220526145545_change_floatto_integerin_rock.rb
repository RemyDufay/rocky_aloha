class ChangeFloattoIntegerinRock < ActiveRecord::Migration[6.1]
  def change
    change_column :rocks, :price, :integer
  end
end
