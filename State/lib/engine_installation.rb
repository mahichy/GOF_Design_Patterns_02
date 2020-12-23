class EngineInstallationState
	def next state
		if state == :hood then return HoodInstallationState.new 
		end
	end
end