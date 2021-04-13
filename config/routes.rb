Rails.application.routes.draw do
  namespace :api do
   namespace :v1 do
     # Lists
    get "/lists/:id/terms", to: 'lists#list_terms'
    resources :lists

    # Users
    resources :users
    post "/login", to: 'auth#login'
    # Add new term to list
    post "/listterms", to: 'lists_terms#create'

    # Terms
    post "/terms/search", to: 'terms#search_term'
    resources :terms

    #Definition
    resources :definitions
    get "/definitions/:id/vote", to: 'definitions#up_vote'

    resources :list_definitions
    end
  end
end
