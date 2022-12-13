class AddColumnAndRemoveToServices < ActiveRecord::Migration[7.0]
  def change
    remove_column :services, :skill
    add_column :services, :name, :string
    add_column :services, :description, :text
    add_column :services, :time, :string
    add_column :services, :price, :integer
  end
end
