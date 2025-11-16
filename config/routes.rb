Rails.application.routes.draw do
  root "home#index"

  resources :products
  resources :contacts
  resources :decorations
  resources :factorys
  resources :design_offices
  resources :project_informations
  resources :users
  resources :shoppings

  get "up" => "rails/health#show", as: :rails_health_check
end
