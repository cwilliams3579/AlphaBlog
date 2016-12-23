Rails.application.routes.draw do
  resources :users, except: [:new]
  resources :articles
  resources :visitors
  root to: 'visitors#index'
  get 'articles/index'
  get 'articles/new'
  get 'signup', to: 'users#new'
end
