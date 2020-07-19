Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  resources :stores
  resources :users
end
