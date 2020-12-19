module Newsletter
	module Generators
		class Base
			attr_reader :format
			def initialize(format = :html)
				@format = format
			end

		def render
			name = format.to_s.capitalize
			strategy = Newsletter::Generators.const_get(name).new
			strategy.execute
		end

		def header
			raise NotImplementedError
		end

		def content
			raise NotImplementedError
		end
		end
	end
end