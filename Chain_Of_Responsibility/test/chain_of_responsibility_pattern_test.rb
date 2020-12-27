require "minitest/autorun"
require_relative "../lib/employee"
require_relative "../lib/department"
require_relative "../lib/chief"
describe Employee do
	it "knows his name" do
		Employee.new.must_respond_to :name
	end

	it "needs to do to the chief and ask for the department name" do
		department = Department.new "Software Development"
		chief      = Chief.new department: department

		Employee.new(chief: chief).department_name.must_equal "Software Development" 
	end
end