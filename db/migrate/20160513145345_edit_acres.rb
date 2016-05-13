class EditAcres < ActiveRecord::Migration
  def change
  	drop_table :acre

    create_table :acres, id: false do |t|
      t.belongs_to :field, index: true
      t.belongs_to :field_acres, index: true
    end

  end
end
