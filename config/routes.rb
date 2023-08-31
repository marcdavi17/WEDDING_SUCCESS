Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :guests
  resources :families

  get 'dashboard', to: 'pages#dashboard', as: 'dashboard'

  resources :desks
  # get "desks/new", to: "desks#new"
  get "guests", to: "guests#index"
  get "families", to: "families#index"
  get "guest/new", to: "guest#new"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
