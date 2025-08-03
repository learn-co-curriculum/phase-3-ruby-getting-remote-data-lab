require 'json'
require 'net/http'
require 'uri'

class GetRequester
  def initialize(url)
    @url = url
  end 

  def parse_json
  appliances = JSON.parse(get_response_body)
  end

 def get_response_body
    uri = URI.parse(@url)
    response = Net::HTTP.get_response(uri)
    response.body
  end
end

#appliances = GetRequester.new(url)
#puts appliances.program_appliances.uniq
