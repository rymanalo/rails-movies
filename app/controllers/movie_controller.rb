class MovieController < ApplicationController

  def home
  end

  def search
    @query = params[:q]
    m = MovieSearch.new
    @results = m.search_api(@query)
  end

  def movies
    @id = params[:id]
    @query = params[:q]
    m = Movie.new
    @result = m.search_api(@id)
    @actors = @result["Actors"].split(", ")
    @directors = @result["Director"].split(", ")
  end

end
