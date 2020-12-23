class CarProductionLine
	attr_reader :state
	def initialize 
		@state = EngineInstallationState.new
	end
end