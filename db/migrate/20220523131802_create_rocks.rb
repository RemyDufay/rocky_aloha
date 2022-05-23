class CreateRocks < ActiveRecord::Migration[6.1]
  def change
    create_table :rocks do |t|
      t.string :color
      t.string :shape
      t.string :name
      t.text :description
      t.float :price
      # t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
