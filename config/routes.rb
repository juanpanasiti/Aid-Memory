Rails.application.routes.draw do
  get 'home/index'
  get 'home/about'

  resources :articles, except: :index
  resources :categories
  root 'home#index'
end
