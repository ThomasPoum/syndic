Rails.application.routes.draw do

  resources :invoices

  resources :condos do
    resources :properties
    resources :expenses
  end
    
  get '/condos/:condo_id/condo_budget', to: 'expenses#condo_budget', as: "condo_budget"
  get '/condos/:condo_id/condo_estim_budget', to: 'expenses#condo_estim_budget', as: "condo_estim_budget"
  
  devise_for :users

  root to: "home#index"
   
end
