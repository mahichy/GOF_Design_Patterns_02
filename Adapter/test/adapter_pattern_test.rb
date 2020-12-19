require "minitest/autorun"
require "json"
require_relative "../lib/newsletter/content"
module Newsletter
	describe Content do
		describe "parsing content from JSON" do
			before do 
				@json = File.read File.expand_path(
					"fixtures/newsletter.json",
					File.dirname(__FILE__)
					)
				@content = Content.parse(@json, :json)
			end

			it "parses the title" do
				skip
				@content.title.must_equal "Hello World!"
			end

			it "parses the body" do
				skip
				@content.body.must_equal "lorem ipsum"
			end
		end
	end
end