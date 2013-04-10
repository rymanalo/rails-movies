require 'open-uri'

class Movie
 
  def search_api(id)
    file = open("http://www.omdbapi.com/?i=#{URI.escape(id)}&tomatoes=true")
    JSON.load(file.read)
  end
end