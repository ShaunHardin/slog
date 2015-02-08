Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :posts
  resources :checklists do
    resources :checklist_items
  end
end
