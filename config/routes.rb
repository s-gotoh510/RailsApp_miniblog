Rails.application.routes.draw do
  # root 'blogposts#index'
  
  get 'blogposts/index'
  get 'blogposts/new'
  
  get 'blogposts/edit'
  get 'blogposts/delete'
  
  get 'bloggenres/index'
  get 'bloggenres/new'
  get 'bloggenres/edit'
  
  get 'blogconfigs', to: 'blogconfigs#index'
  get 'blogconfigs/index'
  get 'blogconfigs/edit'
  patch 'blogconfigs/edit'

end
