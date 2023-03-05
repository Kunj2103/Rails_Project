Rails.application.routes.draw do
  # root "articles#index"
  root "users#index"

  # get '/articles', to: "articles#index"
  # get '/articles/:id', to: "articles#show"
  # resources :articles
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
