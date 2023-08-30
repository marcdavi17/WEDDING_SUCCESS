Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'dashboard', to: 'pages#dashboard', as: 'dashboard'
  get "guests", to: "guests#index"
  get "families", to: "families#index"
  get "guest/new", to: "guest#new"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
