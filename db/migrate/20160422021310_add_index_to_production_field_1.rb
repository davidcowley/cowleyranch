class AddIndexToProductionField1 < ActiveRecord::Migration
  def change
  	drop_table :field_acres 

    create_table "field_acres", force: :cascade do |t|
      t.string   "description",     limit: 45
      t.string   "abbreviation",    limit: 10
      t.integer  "status"
      t.integer  "number_of_acres"
      t.belongs_to :field_type, index: true
      t.datetime "created_at",                 null: false
      t.datetime "updated_at",                 null: false
    end

  end
end
