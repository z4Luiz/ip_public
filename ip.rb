#! /usr/bin/ruby

require "requests/sugar"
require "rainbow"

system "gem install requests"
system "gem install rainbow"
system "clear"

response = Requests.get("https://api.ipify.org")

ip = response.body

puts Rainbow("Your IP is: #{ip}").aqua
