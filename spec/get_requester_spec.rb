require 'spec_helper'

URL = 'https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json'
JSON_STRING = "[\n  {\n    \"name\": \"Daniel\",\n    \"occupation\": \"LG Fridge Salesman\"\n  },\n  {\n    \"name\": \"Joe\",\n    \"occupation\": \"WiFi Fixer\"\n  },\n  {\n    \"name\": \"Avi\",\n    \"occupation\": \"DJ\"\n  },\n  {\n    \"name\": \"Howard\",\n    \"occupation\": \"Mountain Legend\"\n  }\n]"
CONVERTED_DATA = [{ 'name' => 'Daniel', 'occupation' => 'LG Fridge Salesman' }, { 'name' => 'Joe', 'occupation' => 'WiFi Fixer' }, { 'name' => 'Avi', 'occupation' => 'DJ' }, { 'name' => 'Howard', 'occupation' => 'Mountain Legend' }].freeze

describe 'GetRequester' do
  it 'is a class that can be initiated by passing in a URL' do
    expect { GetRequester.new(URL) }.not_to raise_error
  end

  describe 'get_response_body' do
    it 'is an instance method on the GetRequester class' do
      get_requester = GetRequester.new(URL)
      expect { get_requester.get_response_body }.not_to raise_error
    end

    it 'sends a GET request to the URL provided on initialization, returning the body of the request' do
      get_requester = GetRequester.new(URL)
      expect(get_requester.get_response_body).to include(JSON_STRING)
    end
  end

  describe 'parse_json' do
    it 'is an instance method on the GetRequester class' do
      get_requester = GetRequester.new(URL)
      expect { get_requester.parse_json }.not_to raise_error
    end

    it "converts JSON returned from 'get_response_body' into Ruby data structures" do
      get_requester = GetRequester.new(URL)
      results = get_requester.parse_json
      expect(results).to eq(CONVERTED_DATA)
    end
  end
end
