Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'employees#index'
  devise_for :users
  resources :users
  resources :employees, only: [:index]

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
end