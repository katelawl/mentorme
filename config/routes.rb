Rails.application.routes.draw do
  get '/feed' => 'static_pages#feed'
  resources :static_pages
  resources :mentee_profiles
  resources :mentor_profiles
  root to: 'visitors#index'
  devise_scope :user do
    get "/login" => "devise/sessions#new"
    delete "/logout" => "devise/sessions#destroy"
  end
  devise_for :users
  resources :users
end
