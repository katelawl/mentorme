Rails.application.routes.draw do
  resources :mentee_profiles
  resources :mentor_profiles
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
