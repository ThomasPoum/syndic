Rails.application.routes.draw do



  
  resources :condos do
    resources :properties
    resources :expenses

  end
    
    
  
  
  devise_for :users

 
    
  root to: "home#index"
   

end
