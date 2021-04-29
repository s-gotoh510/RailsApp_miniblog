Rails.application.routes.draw do
  
  devise_for :users
  
  resources :users, only: [:show] #users_controllerに対してのresourcesメソッド
end
