class ActorsController < ApplicationController
require 'unirest'

  def index
  end

  def bp_results
  end

  def search
  end

  def movies
    @movies = Unirest.get('https://api.themoviedb.org/3/search/person?query=Brad+Pitt&api_key=54b0dadba188755475a177ad77b52815',
                headers: {},).body
    @titles = @movies["results"]
    render json: => @titles
    # @original_titles = []
    # @titles.each {|key, value| @original_titles << value}
  end
end
