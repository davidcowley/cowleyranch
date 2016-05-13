class RemoveIndexFields < ActiveRecord::Migration
  def change
  	#remove_index(fields, column: field_acres_id)
  	remove_column :fields, :field_acres_id
  end
end
