require "./lib/geolocation"
require "./lib/weather"
require "./lib/news"
require "./lib/events"
require "sinatra/base"
require "pry"

require "dotenv"
Dotenv.load

class Dashboard < Sinatra::Base
  get("/") do
    @ip = request.ip
    @geolocation = Geolocation.new(@ip)
    erb :dashboard
  end

  get("/weather") do
    @ip = request.ip
    @geolocation = Geolocation.new(@ip)
    @weather = Weather.new(ENV["WUNDERGROUND_API_KEY"], @geolocation.city, @geolocation.state_abbreviation)
    erb :weather
  end

  get("/news") do
    @news = News.new(ENV["NYTIMES_TOPSTORIES_API_KEY"])
    erb :news
  end

  get("/events") do
    @events = Events.new(ENV["GOV_DATA_API_KEY"])
    erb :events
  end

end
