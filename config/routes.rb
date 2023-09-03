Rails.application.routes.draw do
  # Users resource routes
  resources :users, only: [:new, :create]
  # Edit user route
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  # Update user route
  patch '/users/:id/edit', to: 'users#update'
end
