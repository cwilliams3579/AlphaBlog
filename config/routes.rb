Rails.application.routes.draw do
  resources :users, except: [:new]
  resources :articles
  resources :visitors
  # resources :sessions
  root to: 'visitors#index'
  get 'articles/index'
  get 'articles/new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'signup', to: 'users#new'
end
