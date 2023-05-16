Rails.application.routes.draw do
  
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end

root 'welcome#index'
get 'my_portfolio', to:  'users#my_portfolio'
get 'search_stock', to:  'stocks#search'
end
