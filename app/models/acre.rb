class Acre < ActiveRecord::Base
	belongs_to :field, class_name: "Field"
	belongs_to :field_acres, class_name: "FieldAcre"
end
