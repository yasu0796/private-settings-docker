require 'httparty'

response = HTTParty.get("https://ipecho.net/plain")

puts response.code
puts response.body