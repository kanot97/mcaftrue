class AddColumnTitleToAppoint < ActiveRecord::Migration[7.0]
  def change
    add_column :appoints, :title, :string
  end
end
