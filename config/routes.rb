Rails.application.routes.draw do



  resources :properties
  
  devise_for :users

  root to: "properties#index"

end
