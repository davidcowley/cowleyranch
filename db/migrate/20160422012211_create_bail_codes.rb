class CreateBailCodes < ActiveRecord::Migration
  def change
    create_table :bail_codes do |t|
      t.string :description, limit: 45
      t.string :abbreviation, limit: 10
      t.integer :status
      t.integer :weight

      t.timestamps null: false
    end
  end
end
