Rails.application.routes.draw do
  root 'blogconfigs#index'
  get 'blogs', to: 'blogs#index'
  get 'blogs/index'
  get 'blogs/:id/genre', to: 'blogs#genre'
  get 'blogs/:id/show', to: 'blogs#show'
  
  get 'blogposts', to: 'blogposts#index'
  get 'blogposts/index'
  get 'blogposts/new'
  post 'blogposts/new', to: 'blogposts#new'
  get 'blogposts/:id/edit', to: 'blogposts#edit'
  patch 'blogposts/:id/edit', to: 'blogposts#edit'
  get 'blogposts/:id/delete', to: 'blogposts#delete'
  post 'blogposts/:id/delete', to: 'blogposts#delete'
  
  get 'blogposts/edit'
  get 'blogposts/delete'
  
  get 'bloggenres', to: 'bloggenres#index'
  get 'bloggenres/index'
  get 'bloggenres/new'
  post 'bloggenres/new', to: 'bloggenres#new'
  # get 'bloggenres/edit'
  get 'bloggenres/:id/edit', to: 'bloggenres#edit'
  patch 'bloggenres/:id/edit', to: 'bloggenres#edit'
  
  get 'blogconfigs', to: 'blogconfigs#index'
  get 'blogconfigs/index'
  get 'blogconfigs/edit'
  patch 'blogconfigs/edit'

end
