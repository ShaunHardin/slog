Rails.application.routes.draw do
  devise_for :users

  root 'home#index'
  get '/crm/', to: 'ember#index'

  resources :posts

  get '*path', to: 'ember#index'
end
