require 'open-uri'

class MovieSearch
 
  def search_api(query)
    file = open("http://www.omdbapi.com/?s=#{URI.escape(query)}")
    JSON.load(file.read)["Search"]
  end
end

