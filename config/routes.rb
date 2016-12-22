Rails.application.routes.draw do
  get 'articles/index'
  get 'articles/new'

  root to: 'visitors#index'
  resources :articles
  resources :visitors
end
