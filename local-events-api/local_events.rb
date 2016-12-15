# your code, here.
require 'pry'
require 'open-uri'
require 'httparty'
require 'json'

puts "UPCOMING EVENTS IN SELECTED STATES:"
puts "*"*35
state_entries = ARGV

state_entries.each do |state|
  puts "\n\nUpcoming #{state.upcase} events:"
  puts "*"*20
  body = JSON.parse(HTTParty.get("https://api.seatgeek.com/2/events?venue.state=#{state}&client_id=NjQyNjQ2NnwxNDgxNzQ4MTkx").body)

  events = body["events"]

  events.each do |event_hash|
    print "#{event_hash["title"]} - @ #{event_hash["venue"]["name"]}\n"
  end
end
