Rails.application.routes.draw do
  get "requests/new"
  get "requests/create"
  root "home#index"
  
  get "/auth/:provider/callback", to: "sessions#oauth"
  get "/logout", to: "sessions#destroy"

  get "sessions/new"
  get "sessions/create"
  get "sessions/destroy"

  get    "login",  to: "sessions#new"
  post   "login",  to: "sessions#create"
  delete "logout", to: "sessions#destroy"



  resources :about_us, only: [:index]
  resources :products,              only: [:index, :show]
  resources :categories,            only: [:index, :show]
  resources :decorations,           only: [:index, :show]
  resources :project_informations,  only: [:index, :show]
  resources :accessories,           only: [:index, :show]
  resource  :contact,               only: [:show]
  resource  :design_office,         only: [:show]
  resource  :factory,               only: [:show]
  resources :requests,              only: [:new, :create]
  resources :users

  resource :cart,               only: [:show] do
    post "add/:product_id",     to: "carts#add",        as: :add
    post "remove/:product_id",  to: "carts#remove",     as: :remove
    post "remove_all",          to: "carts#remove_all", as: :remove_all
  end

  resources :cart_items,        only: [:create, :update, :destroy]
  resources :orders,            only: [:new, :create, :show, :index]

  namespace :admin do
    get "requests/index"
    get "requests/show"
    get "requests/destroy"
    get "dashboard",                        to: "dashboard#index", as: "dashboard"

    resources :categories
    resources :products do
      member do
        delete "remove_image/:image_id",    to: "products#remove_image", as: :remove_image
        patch :change_image 
      end
    end
    resources :project_informations do
      member do
        delete :purge_image
      end
    end
    
    resources :orders,                only: [:index, :show, :update]
    resources :requests,              only: [:index, :show, :destroy]
    resources :project_information_infors do
      member do
        delete :purge_image
      end
    end
    resources :users
    resources :decorations do
      delete "images/:image_id", to: "decorations#destroy_image", as: :image
    end
    resources :accessories do
      delete "images/:image_id", to: "accessories#destroy_image", as: :image
    end
    resources :promotions
    resource :contact,                only: [:edit, :update]
    resource :introduction do
      member do
        delete :destroy_image
      end
    end
    resource :slogan,                 only: [:edit, :update]
    resource :color,                  only: [:edit, :update]
    resource :design_office,          only: [:edit, :update]
    resource :factory,                only: [:edit, :update]
    

  end



  get "up" => "rails/health#show", as: :rails_health_check
end
