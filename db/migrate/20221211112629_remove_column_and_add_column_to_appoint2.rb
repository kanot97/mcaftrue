class RemoveColumnAndAddColumnToAppoint2 < ActiveRecord::Migration[7.0]
  def change
    remove_column :appoints, :start_at, :datetime
    add_column :appoints, :start_at, :string
  end
end
