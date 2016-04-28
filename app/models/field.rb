class Field < ActiveRecord::Base
	has_many :Productions
	belongs_to :field_acre, class_name: "FieldAcre"
end
