Rails.application.routes.draw do
  devise_for :users
  root to: "pages#dashboard"


  resources :weddings, only: [:show] do
    resources :families
    member do
      resources :guests
      resources :desks
      get 'guest_desks/affect', to: 'guest_desks#affect'
      resources :guest_desks
      get "sitting_plan", to: "weddings#sittin"
    end
  end

  get 'dashboard', to: 'pages#dashboard', as: 'dashboard'

  # get "desks/new", to: "desks#new"
  get "guests", to: "guests#index"
  get "guest/new", to: "guest#new"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
