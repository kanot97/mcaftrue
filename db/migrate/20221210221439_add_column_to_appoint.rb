class AddColumnToAppoint < ActiveRecord::Migration[7.0]
  def change
    add_column :appoints, :description, :string
  end
end
