class CreateRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :requests do |t|
      t.date :date
      t.references :user, null: false, foreign_key: true
      t.references :rock, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
