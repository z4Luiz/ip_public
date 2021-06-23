#! /usr/bin/ruby

system "gem install requests"
system "gem install rainbow"
system "clear"

require "requests/sugar"
require "rainbow"

response = Requests.get("https://api.ipify.org")

ip = response.body

puts Rainbow("Your IP is: #{ip}").aqua
