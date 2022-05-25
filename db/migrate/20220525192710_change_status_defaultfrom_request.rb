class ChangeStatusDefaultfromRequest < ActiveRecord::Migration[6.1]
  def change
    change_column :requests, :status, :string, default: "En attente de validation"
  end
end
