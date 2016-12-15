require "json"
require "net/http"

class News
  def initialize(key)
    @key = key
    @news = get_news
    #binding.pry
  end

  def results
    @news["results"]
  end

  private
  def uri
    URI("http://api.nytimes.com/svc/topstories/v1/technology.json?api-key=#{@key}")
  end

  def get_news
    response = Net::HTTP.get_response(uri)
    JSON.parse(response.body)
  end

end
