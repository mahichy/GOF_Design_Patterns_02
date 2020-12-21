require "minitest/autorun"
require_relative "../lib/family"

describe Family do 
	it "prints every member of the family" do
		family = Family.new "Chowdhury"

		family.add_father "Mahfuz"
		family.add_mother "Mariam"

		3.times { |i| family.add_child "Child #{i}", "F" }

		output = []
		 family.each_member { |member| output << family.full_name(member)}

		output.must_equal (
			[
				"Mahfuz Chowdhury",
				"Mariam Chowdhury",
				"Child 0 Chowdhury",
				"Child 1 Chowdhury",
				"Child 2 Chowdhury"
			])
	end
end
