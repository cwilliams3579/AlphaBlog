Rails.application.routes.draw do
  root to: 'visitors#index'
  get 'articles/index'
  get 'articles/new'
  get 'signup', to: 'users#new'
  resources :articles
  resources :visitors
  resources :users, except: [:new]
end
