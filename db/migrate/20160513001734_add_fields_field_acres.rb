class AddFieldsFieldAcres < ActiveRecord::Migration
  def change
    create_table :fields_field_acres, id: false do |t|
      t.belongs_to :fields, index: true
      t.belongs_to :field_acres, index: true
    end  
  end
end
