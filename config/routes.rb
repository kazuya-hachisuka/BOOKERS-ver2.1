Rails.application.routes.draw do



  devise_for :users
  root 'books#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
  get '/' => 'books#top'
  resources :users, only: [:show]
end