require "minitest/autorun"
require_relative "../lib/user"

module Application 
	describe User do
			 let(:user) {User.new( 
			 	"josemotanet",
			 	"Jose Mota", 
			 	"Software Designer"
			 	)}
		it "notifies spectators of changes to the user" do

			observer = Minitest::Mock.new
			observer.expect :updated, nil, [ user ]

			user.subscribe observer
			user.update :username, "josemota"
			observer.verify
		end

		it "prints the contents of the changes user" do 
			observer = UserObserver.new
			user.subscribe observer
			capture_io { user.update :username, "josemota"}.
			to_s.must_include "josemota"
		end
	end
end