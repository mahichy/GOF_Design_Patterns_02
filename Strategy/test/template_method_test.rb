require "minitest/autorun"
require_relative "../lib/newsletter/generators/base"
require_relative "../lib/newsletter/generators/html"
require_relative "../lib/newsletter/generators/markdown"

module Newsletter
	describe Generators do 
		it "generate a newsletter in HTML" do
			final_result = File.read(File.expand_path(
				"fixtures/newsletter.html",
				File.dirname(__FILE__)
				))
			Generators::Base.new(:html).render.must_include(final_result)
		end

		it "generates a report in markdown" do 
			skip
			final_result = File.read(File.expand_path(
				"fixtures/newsletter.markdown",
				File.dirname(__FILE__)
				))
			
			Generators::Base.new(:markdown).render.must_include(final_result)
		end

		it "fails to render if calling the base generator class" do
			skip
			-> { Generator.new.header }.must_raise NotImplementedError
			-> { Generator.new.content }.must_raise NotImplementedError
		end
	end
end
