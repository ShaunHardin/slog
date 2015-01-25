Rails.application.routes.draw do
  root 'home#index'
  resources :posts
  resources :checklists do
    resources :checklist_items
  end
end
