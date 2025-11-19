Rails.application.routes.draw do
  get "sessions/new"
  get "sessions/create"
  get "sessions/destroy"
  root "home#index"

  get    "login",  to: "sessions#new"
  post   "login",  to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  resources :products
  resources :contacts
  resources :decorations
  resources :factorys
  resources :design_offices
  resources :project_informations
  resources :users
  resources :shoppings

  namespace :admin do
    resources :products
  end


  get "up" => "rails/health#show", as: :rails_health_check
end
