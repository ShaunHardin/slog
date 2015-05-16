Rails.application.routes.draw do
  devise_for :users

  root 'home#index'
  resources :posts

  namespace :api do
    namespace :v1 do
      resources :leads
    end
  end

  get '/crm/', to: 'ember#index'
  get '*path', to: 'ember#index'
end
