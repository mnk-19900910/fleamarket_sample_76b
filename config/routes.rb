Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "top#index"
  resources :users, only: :index
  resources :items, only: [:new, :create, :edit, :create]
end
