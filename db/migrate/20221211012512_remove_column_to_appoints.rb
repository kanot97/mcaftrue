class RemoveColumnToAppoints < ActiveRecord::Migration[7.0]
  def change
    remove_column :appoints, :end_at, :datetime
  end
end
