require "wicky_kuaidi100/version"

module WickyKuaidi100
  # Your code goes here...
  def self.connection(id, nu, com)

	url = URI.parse('http://api.kuaidi100.com/api')

	Net::HTTP.start(url.host, url.port) do |http|
		req = Net::HTTP::Post.new(url.path)
		req.set_form_data({
							id:"#{id}",
				 			com:"#{com}",
				 			nu:"#{nu}",
				 			valicode:"",
				 			show:"2",
				 			muti:"1",
				 			order:"desc"
						})

		puts http.request(req).body

		@content = http.request(req).body.force_encoding("UTF-8")
		puts @content
	end
  end

end
