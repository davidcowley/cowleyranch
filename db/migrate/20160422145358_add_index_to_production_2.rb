class AddIndexToProduction2 < ActiveRecord::Migration
  def change
  	drop_table :production

  	create_table :productions do |t|
      t.belongs_to :bail_code, index: true
      t.belongs_to :cutting_code, index: true
      t.belongs_to :hay_type, index: true
      t.belongs_to :field, index: true
      t.integer  "number_of_bales"
      t.datetime "production_at"
      t.datetime "created_at",      null: false
      t.datetime "updated_at",      null: false
    end
  end
end
