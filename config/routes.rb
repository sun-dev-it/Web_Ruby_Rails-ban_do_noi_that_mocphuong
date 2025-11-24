Rails.application.routes.draw do
  root "home#index"

  get "sessions/new"
  get "sessions/create"
  get "sessions/destroy"

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

  resource :cart, only: [:show] do
    post "add/:product_id",     to: "carts#add",        as: :add
    post "remove/:product_id",  to: "carts#remove",     as: :remove
    post "remove_all",          to: "carts#remove_all", as: :remove_all
  end

  resources :cart_items, only: [:create, :update, :destroy]
  resources :orders,     only: [:new, :create, :show, :index]

  namespace :admin do
    get "dashboard"       , to: "dashboard#index", as: "dashboard"
    resources :categories 
    resources :products 
    resources :orders, only: [:index, :show, :update]
    resources :accounts
  end



  get "up" => "rails/health#show", as: :rails_health_check
end
