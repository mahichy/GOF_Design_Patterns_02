require "minitest/autorun"
require_relative "../lib/proxy"
require_relative "../lib/video"

class ForbiddenAccessError < StandardError; end


describe VideoAuthenticationProxy do 
	it "allows priviliged users to access the video" do
		video = Video.new "My first video", "My first description"
		proxy = VideoAuthenticationProxy.new video, "Privileged"
		proxy.play

		capture_io { proxy.play }.to_s.must_include "My first video"
		capture_io { proxy.play }.to_s.must_include "My first video", "My first description"
	end

	it "forbids regular users to access the videos" do
		video = Video.new "My first video", "My first description"
		proxy = VideoAuthenticationProxy.new video, "Anonymous"

		-> { proxy.play }.must_raise ForbiddenAccessError

	end
end