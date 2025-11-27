Rails.application.routes.draw do
  root "home#index"

  get "sessions/new"
  get "sessions/create"
  get "sessions/destroy"

  get    "login",  to: "sessions#new"
  post   "login",  to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  
  resources :products
  resources :decorations
  resource  :contact,           only: [:show]
  resource  :design_office,     only: [:show]

  resources :factorys
  resources :project_informations
  resources :users

  resource :cart,               only: [:show] do
    post "add/:product_id",     to: "carts#add",        as: :add
    post "remove/:product_id",  to: "carts#remove",     as: :remove
    post "remove_all",          to: "carts#remove_all", as: :remove_all
  end

  resources :cart_items,        only: [:create, :update, :destroy]
  resources :orders,            only: [:new, :create, :show, :index]

  namespace :admin do
    get "dashboard", to: "dashboard#index", as: "dashboard"

    resources :categories
    resources :products do
      member do
        delete "remove_image/:image_id", to: "products#remove_image", as: :remove_image
      end
    end

    resources :orders,          only: [:index, :show, :update]
    resources :accounts
    resource :contact,          only: [:edit, :update]
    resource :introduction,     only: [:edit, :update]
    resource :slogan,           only: [:edit, :update]
    resource :color,            only: [:edit, :update]
    resource :design_office,    only: [:edit, :update]
  end



  get "up" => "rails/health#show", as: :rails_health_check
end
