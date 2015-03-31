Rails.application.routes.draw do
  devise_for :users

  root 'home#index'

  resources :posts

  get '/todo', to: 'backbone#index', as: 'todo'
end
