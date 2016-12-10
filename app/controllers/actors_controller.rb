class ActorsController < ApplicationController
require 'unirest'

  def index
  end

  def bp_results
  end

  def search
  end

  def movies
    if params[:search]
      @name_string = params[:search]
      @name = @name_string.sub!(' ', '+')
      @movies = Unirest.get("https://api.themoviedb.org/3/search/person?query=" + "#{@name}" + "&api_key=54b0dadba188755475a177ad77b52815").body
      if @movies["total_results"] == 0
        @movies = Unirest.get("https://api.themoviedb.org/3/search/person?query=" + "Nicolas+Cage" + "&api_key=54b0dadba188755475a177ad77b52815").body
      end
      render json: @movies
    else
      render 'movies.html.erb'
    end
  end
end
