require 'net/http'
require 'open-uri'

class GetRequester 
  attr_reader :url 
  
  def initialize(url)
    @url = url 
  end

  def get_response_body 
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    response.body 
  end
end
