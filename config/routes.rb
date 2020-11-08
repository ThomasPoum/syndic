Rails.application.routes.draw do



  resources :condos
  resources :properties
  
  devise_for :users

  root to: "properties#index"

end
