class CreateHayTypes < ActiveRecord::Migration
  def change
    create_table :hay_types do |t|
      t.string :description, limit: 45
      t.string :abbreviation, limit: 10
      t.integer :status

      t.timestamps null: false
    end
  end
end
