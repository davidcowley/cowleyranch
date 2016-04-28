class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.string :description, limit: 45
      t.string :abbreviation, limit: 10
      t.integer :status

      t.timestamps null: false
    end
  end
end
