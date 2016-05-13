class Field < ActiveRecord::Base
    attr_accessor :total_acres

	has_many :Productions

	has_many :acres
	has_many :field_acres, :through => :acres


	def total_acres= (total_acres)
      @total_acres = total_acres
    end

    def total_acres
      @total_acres
    end
end
