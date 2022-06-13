Rails.application.routes.draw do
  get 'new_user/new'
  resources :sessions, only: [:new, :create, :destroy]
  root 'home#index'
end
