require 'open-uri'
require 'net/http'
require 'json'

class GetRequester
  attr_accessor :url_string

  def initialize(url_string)
    @url_string = url_string
  end

  def get_response_body
    uri = URI.parse(url_string)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def parse_json
    JSON.parse(get_response_body)
  end
end
