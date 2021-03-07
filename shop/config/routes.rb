Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :powersupplies
  resources :harddisks
  resources :ssds
  resources :coolers
  resources :motherboards
  resources :processors
  resources :videocards
  resources :monoblocks
  resources :computers
  resources :os
  resources :notebooks
  resources :monitorsses
  resources :colors
  resources :countries
  resources :categories
  resources :brands
  devise_for :users
  root to: 'brands#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
