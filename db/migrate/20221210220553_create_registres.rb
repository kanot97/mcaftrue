class CreateRegistres < ActiveRecord::Migration[7.0]
  def change
    create_table :registres do |t|
      t.references :user, null: false, foreign_key: true
      t.references :appoint, null: false, foreign_key: true

      t.timestamps
    end
  end
end
