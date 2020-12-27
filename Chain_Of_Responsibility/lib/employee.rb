class Employee
	attr_reader :chief
	def initialize options = {}
		@chief = options[:chief]
	end
	def name
		"John Doe"
	end

	def department_name
		chief.department.name
	end

	def department_count
		chief.department.count
	end
end