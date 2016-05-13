class FieldAcre < ActiveRecord::Base
	belongs_to :field_type, class_name: "FieldType"

	has_many :acres
	has_many :fields, :through => :acres

end
