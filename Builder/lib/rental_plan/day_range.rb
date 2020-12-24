class DayRange 
	attr_reader :start
	def initialize start = 1, finish = 9999
		@start = start
		@finish = finish
	end
end