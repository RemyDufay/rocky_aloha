class AddEndDateToRequests < ActiveRecord::Migration[6.1]
  def change
    add_column :requests, :end_date, :date
  end
end
