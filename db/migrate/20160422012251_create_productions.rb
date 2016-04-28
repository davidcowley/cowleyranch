class CreateProductions < ActiveRecord::Migration
  def change
    create_table :productions do |t|
      t.integer :number_of_bales
      t.timestamp :production_at

      t.timestamps null: false
    end
  end
end
