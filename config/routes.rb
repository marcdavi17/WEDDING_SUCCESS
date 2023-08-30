Rails.application.routes.draw do
  devise_for :users
  root to: "pages#dashboard"

  resources :guests
  resources :families

  get 'dashboard', to: 'pages#dashboard', as: 'dashboard'
  # get "guests", to: "guests#index"
  # get "guest/new", to: "guest#new"
  # get "families", to: "families#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
