Rails.application.routes.draw do
  
  devise_for :users
  # get 'cards/index'
  # get 'cards/show'
  # get 'cards/new'
  # get 'cards/edit'
  
  root 'cards#index'
  get 'cards/find'
  post 'cards/find'
  resources :cards
  resources :users, only: [:show] #users_controllerに対してのresourcesメソッド
end
