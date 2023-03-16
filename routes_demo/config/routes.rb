Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root "admin/users#index"
  resources :photos, except: [:show]
  get "/photos(/:id)", to: "photos#show"
  get "/photos/message", to: "photos#message"

  namespace :admin do
    resources :users
  end
end
