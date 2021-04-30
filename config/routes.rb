Rails.application.routes.draw do
  # root 'blogconfigs#index'
  
  get 'blogposts/index'
  get 'blogposts/new'
  get 'blogposts/edit'
  get 'blogposts/delete'
  get 'bloggenres/index'
  get 'bloggenres/new'
  get 'bloggenres/edit'
  get 'blogconfigs/index'
  get 'blogconfigs/edit'
end
