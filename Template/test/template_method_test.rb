require "minitest/autorun"
require_relative "../lib/generator"
require_relative "../lib/newsletter/generators/html"
require_relative "../lib/newsletter/generators/markdown"

module Newsletter
	describe Generator do 
		it "generate a newsletter in HTML" do
			final_result = File.read(File.expand_path(
				"fixtures/newsletter.html",
				File.dirname(__FILE__)
				))
			Generators::HTML.new.render.must_include(final_result)
		end

		it "generates a report in markdown" do 
			final_result = File.read(File.expand_path(
				"fixtures/newsletter.markdown",
				File.dirname(__FILE__)
				))
			
			Generators::Markdown.new.render.must_include(final_result)
		end

		it "fails to render if calling the base generator class" do
			-> { Generator.new.header }.must_raise NotImplementedError
			-> { Generator.new.content }.must_raise NotImplementedError
		end
	end
end
