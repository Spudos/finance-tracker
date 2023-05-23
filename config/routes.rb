Rails.application.routes.draw do
  
  resources :user_stocks, only: [:create, :destroy]
  resources :friendships, only: [:create, :destroy]

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end

root 'welcome#index'
get 'my_portfolio', to:  'users#my_portfolio'
get 'search_stock', to:  'stocks#search'
get 'friends', to: 'users#friend_list'
get 'search_friends', to: 'users#search'
resources :users, only: [:show]
end
