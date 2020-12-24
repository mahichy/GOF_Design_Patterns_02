require_relative "rental_plan/metadata"
require_relative "rental_plan/day_range"
require_relative "rental_plan/hour_range"


class RentalPlan
	def self.build name
		build_metadata name	
		new @metadata
	end

	def self.build_metadata name
		@metadata =	Metadata.new name
	end

	def initialize metadata
		@metadata = metadata
	end
	def name
		@metadata.name
	end
end