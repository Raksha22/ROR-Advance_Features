Rails.application.routes.draw do
  root 'blogs#index'
  
  devise_for :users
  
  resources :users do
    resources :blogs
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end
