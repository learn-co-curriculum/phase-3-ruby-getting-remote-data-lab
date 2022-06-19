# Write your code here
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

  def initialize(url)
    @url = url
  end

#  URL = " https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"

 def get_response_body
    uri = URI.parse(@url)
    response = Net::HTTP.get_response(uri)
    response.body
 end

 def parse_json
  JSON.parse(get_response_body)
 end

end