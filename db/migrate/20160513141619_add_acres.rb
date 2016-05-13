class AddAcres < ActiveRecord::Migration
  def change
  	drop_table :fields_field_acres

    create_table :acre, id: false do |t|
      t.belongs_to :field, index: true
      t.belongs_to :field_acres, index: true
    end

  end
end
