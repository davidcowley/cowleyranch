class Production < ActiveRecord::Base
	belongs_to :bail_code, class_name: "BailCode"
	belongs_to :cutting_code, class_name: "CuttingCode" 
	belongs_to :hay_type, class_name: "HayType"
	belongs_to :field, class_name: "Field"
end
