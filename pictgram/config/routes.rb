Rails.application.routes.draw do
  get 'sessions/new'
  
  root "pages#index"
  get "pages/help"
  
  resources :users
  resources :topics
  get      "/login", to: "sessions#new"
  post     "/login", to: "sessions#create"
  delete  "/logout", to: "sessions#destroy"
  
  get "favorites/index"
  post "favorites", to: "favorites#create"
  delete "favorites", to: "favorites#destroy"
  
  get "comments/new" 
  post "comments", to:"comments#create"
  
  get "information" => "pages#info"
  
  
end
