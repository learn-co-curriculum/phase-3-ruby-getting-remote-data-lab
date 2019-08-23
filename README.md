# Getting Remote Data Lab

## Learning Goals

- Practice sending GET requests using Ruby
- Build a reusable class for sending requests and handling responses

## Introduction

It is time to practice building out your own class for retrieving remote data.
In this lab, you are tasked with building a generic `GetRequester` class. This
class will be able to take in a URL on initialization and send an HTTP GET
request on command. You will also need to build a method for dealing with
requests that return JSON.

When complete, you will have a simple, but versatile class for getting
information from all kinds of sources over the internet.

## Instructions

All work should be completed in `lib/get_requester.rb`. Use the previous
code-along on getting data from APIs as a reference when building out your
class.

Start by creating a `GetRequester` class. This class should be able to
initialize with a string URL.

The `GetRequester` class should have a `get_response_body` method that sends a
GET request to the URL passed in on initialization. This method should return
the _body_ of the response.

The `GetRequester` class should have a `parse_json` method should use
`get_response_body` to send a request, then return a Ruby Array or Hash made up
of data converted from the response of that request.

The tests in this lab will use your code to send a request for some JSON data,
located at
[https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json][].
Read the test error messages for additional as you work for additional
information. Don't forget to require the necessary Ruby modules and classes!

[https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json]: https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json

## Conclusion

Once you've successfully passed the tests, from this lesson's directory, you
should be able to open IRB, use `require_relative` to load
`lib/get_requester.rb`, and send out some requests!

```ruby
get_requester = GetRequester.new('https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json')
get_requester.parse_json
#=> [{"name"=>"Daniel", "occupation"=>"LG Fridge Salesman"}, {"name"=>"Joe", "occupation"=>"WiFi Fixer"}, {"name"=>"Avi", "occupation"=>"DJ"}, {"name"=>"Howard", "occupation"=>"Mountain Legend"}]
```

This class won't work for all cases but is a good starting place to get us off
the ground. We can now augment our applications with data from the internet!
Combined with our knowledge of Ruby, we have all the tools we need to start
building smarter Ruby applications populated with real data.
