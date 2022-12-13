class ChangeColumnAppoint < ActiveRecord::Migration[7.0]
  def change
    remove_column :appoints, :start_at, :string
    add_column :appoints, :horaire, :string 
  end
end
