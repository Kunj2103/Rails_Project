Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # root "products#index"
  root "products#index"
  # root "admins#index"

  # Defines the root path route ("/")
  # root "articles#index"
  resources :products, :admin, :users
  # resource :admin, :controller => "admin"

  # resources :admin
end
