Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'new_user/new'
  resources :users
  root 'home#index'

  get 'sign_up', to: 'new_user#new'
  post 'sign_up', to: 'new_user#create'
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
end
