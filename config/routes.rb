Rails.application.routes.draw do
  get '/' => 'actors#index'
  get '/movies' => 'actors#movies'
end
