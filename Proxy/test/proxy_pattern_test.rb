require "minitest/autorun"
require_relative "../lib/video"
describe Video do
	let(:video) { Video.new(
		"Welcome to Tuts",
		"In this lesson you'll learn about the proxy pattern."
		)  }

	it "shows the name" do
		capture_io { video.play }.to_s.must_include "Welcome to Tuts"
	end

	it "shows the description" do
		capture_io { video.play }.to_s.must_include "In this lesson you'll learn about the proxy pattern."

	end
end