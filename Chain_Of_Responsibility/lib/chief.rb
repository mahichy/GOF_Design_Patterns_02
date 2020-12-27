class Chief
	attr_reader :department
	def initialize options
		@department = options[:department]
	end

	def method_missing *args, &block
	method = args.shift
		if method.to_s.include? "department" 
			correct_method = method.to_s.gsub "department_", ""
			department.send correct_method, *args, &block
		else
			super *args, &block
		end
	end

end