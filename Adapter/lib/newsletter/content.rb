module Newsletter
	class Content
		attr_reader :title, :body
		def self.parse source, format
			adapter = Newsletter::Adapters::const_get(format.to_s.capitalize).new source
			content = adapter.parse
			new content["title"], content["body"]

		end

		def initialize title, body
			@title = title
			@body = body
		end

		# def self.parse_json source
		# 	json = JSON.parse source
		# end

		# def self.parse_xml source
		# 	xml = Nokogiri::XML source
		# 	title = xml.xpath("//item/title")[0].children[0].text
		# 	body = xml.xpath("//item/body")[0].children[0].text	

		# 	{ "title" => title, "body" => body }
		# end

	end
end