Rails.application.routes.draw do
  resources :lists
  resources :users
  resources :terms

  get "/lists/:id/terms", to: 'lists#list_terms'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
