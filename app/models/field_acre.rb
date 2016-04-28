class FieldAcre < ActiveRecord::Base
	belongs_to :field, class_name: "Field"
	has_many :FieldType
end
