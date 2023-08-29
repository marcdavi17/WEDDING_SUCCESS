Rails.application.routes.draw do
  devise_for :users
  root to: "pages#dashboard"
  get 'dashboard', to: 'pages#dashboard', as: 'dashboard'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
