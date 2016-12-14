# your code, here.
require 'pry'
require 'open-uri'
require 'httparty'
require 'json'

state_entry = ARGV[0]
states = ["MA", ARGV[0]]
  states.each do |state|
  puts "\n\nUpcoming #{state} events:"
  body = JSON.parse(HTTParty.get("https://api.seatgeek.com/2/events?venue.state=#{state}&client_id=NjQyNjQ2NnwxNDgxNzQ4MTkx").body)

  events = body["events"]

  events.each do |event_hash|
    print "#{event_hash["title"]} - @ #{event_hash["venue"]["name"]}\n"
  end
end

# binding.pry
