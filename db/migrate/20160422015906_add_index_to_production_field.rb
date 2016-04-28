class AddIndexToProductionField < ActiveRecord::Migration
  def change
    create_table "field_acres", force: :cascade do |t|
      t.string   "description",     limit: 45
      t.string   "abbreviation",    limit: 10
      t.integer  "status"
      t.integer  "number_of_acres"
      t.belongs_to :field_types, index: true
      t.datetime "created_at",                 null: false
      t.datetime "updated_at",                 null: false
    end

    create_table "fields", force: :cascade do |t|
      t.string   "description",  limit: 45
      t.string   "abbreviation", limit: 10
      t.integer  "status"
      t.belongs_to :field_acres, index: true
      t.datetime "created_at",              null: false
      t.datetime "updated_at",              null: false
    end

  end
end
