Rails.application.routes.draw do



  
  resources :condos do
    resources :properties
    resources :expenses
    
  end
    
    get '/condos/:condo_id/condo_budget', to: 'expenses#condo_budget', as: "condo_budget"
  
  
  devise_for :users

 
    
  root to: "home#index"
   

end
