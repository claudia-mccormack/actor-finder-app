Rails.application.routes.draw do
  get '/actors' => 'actors#index'
  get '/bp_results' => 'actors#bp_results'
  get '/search' => 'actors#search'
  get '/movies' => 'actors#movies'
end
