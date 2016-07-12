Rails.application.routes.draw do
  resources :weapons
  # get 'users/show'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root 'static_pages#home'
  resources :posts
  resources :users
end
