Rails.application.routes.draw do
  # Lists
  get "/lists/:id/terms", to: 'lists#list_terms'
  resources :lists

  # Users
  resources :users

  # Add new term to list
  post "/listterms", to: 'lists_terms#create'

  # Terms
  resources :terms
  get "/terms/search/:search", to: 'terms#search_term'

  # Joke
  get "/joke", to: 'joke_api#show'

  # Email verify
  get "/verify", to: 'everify#verify'
end
