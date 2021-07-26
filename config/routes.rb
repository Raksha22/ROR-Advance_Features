Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#index'
  devise_for :users
  resources :users
  resources :employees, only: [:index]

  get "homes/delete_cookies"
  get "homes/show_cookies"
  get "homes/set_cookies"

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
end