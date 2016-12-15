require "json"
require "net/http"

class Weather
  def initialize(key, city, state)
    @key = key
    @city = city
    @state = state
    @weather = get_weather
  end

  def temp_string
    @weather["current_observation"]["temperature_string"]
  end

  def conditions
    @weather["current_observation"]["weather"]
  end

  private
  def uri
    URI("http://api.wunderground.com/api/#{@key}/conditions/q/#{@state}/#{@city}.json")
  end

  def get_weather
    response = Net::HTTP.get_response(uri)
    JSON.parse(response.body)
  end

end
