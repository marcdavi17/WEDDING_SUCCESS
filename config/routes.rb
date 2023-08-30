Rails.application.routes.draw do
  devise_for :users
<<<<<<< HEAD
  root to: "pages#dashboard"
  resources :guests
  resources :families
=======
  root to: "pages#home"
>>>>>>> 98e8f6b7bfa2b64dff9c24b66d92690161658636
  get 'dashboard', to: 'pages#dashboard', as: 'dashboard'
  # get "guests", to: "guests#index"
  # get "guest/new", to: "guest#new"
  # get "families", to: "families#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
