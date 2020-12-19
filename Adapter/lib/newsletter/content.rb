module Newsletter
	class Content
		attr_reader :title, :body
		def self.parse source, format
			json = JSON.parse source
			new json["title"], json["body"]
		end

		def initialize title, body
			@title = title
			@body = body
		end

	end
end