Rails.application.routes.draw do
  # Users resource routes
  resources :users, only: [:new, :create]
end
