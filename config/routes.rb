Rails.application.routes.draw do
  get '/feed' => 'static_pages#feed'
  get '/search'=> 'static_pages#search'
  get '/profileExample'=> 'static_pages#profileExample'
  get '/mentorsFeed'=> 'static_pages#mentorsFeed'
  resources :static_pages
  resources :mentee_profiles
  resources :mentor_profiles
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
