class CreateFieldAcres < ActiveRecord::Migration
  def change
    create_table :field_acres do |t|
      t.string :description, limit: 45
      t.string :abbreviation, limit: 10
      t.integer :status
      t.integer :number_of_acres

      t.timestamps null: false
    end
  end
end
