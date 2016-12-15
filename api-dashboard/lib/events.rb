require "json"
require "net/http"

class Events
  def initialize(key, city, state)
    @key = key
    @city = city
    @state = state
    @events = get_events
  end

  def name
    @events["current_observation"]
  end

  def venue
    @events["current_observation"]["weather"]
  end

  private

  def uri
    # uri = URI("http://api.data.gov/nrel/alt-fuel-stations/v1/nearest.json")
    # params = { location: "#{@city, @state}" }
    # uri.query = URI.encode_www_form(params)
    #
    # get = Net::HTTP::Get.new(uri)
    # get["X-Api-Key"] = "#{@key}"
    # response = Net::HTTP.start(uri.hostname, uri.port) do |http|
    #   http.request(get)
    # end
  end

  def get_events
    # response = Net::HTTP.get_response(uri)
    # JSON.parse(response.body)
  end

end
