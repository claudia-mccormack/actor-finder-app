Rails.application.routes.draw do
  get '/actors' => 'actors#index'
  get '/brad' => 'actors#brad'
  get '/search' => 'actors#search'
  get '/movies' => 'actors#movies'
end
