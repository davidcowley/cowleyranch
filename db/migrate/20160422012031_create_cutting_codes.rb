class CreateCuttingCodes < ActiveRecord::Migration
  def change
    create_table :cutting_codes do |t|
      t.string :description, limit: 45
      t.string :abbreviation, limit: 10
      t.integer :status

      t.timestamps null: false
    end
  end
end
