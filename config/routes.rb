Rails.application.routes.draw do
  devise_for :users
  get 'users/index' => 'users#index'

  get 'users/login' => 'users#login'

  post 'users/login' => 'users#check'

  patch 'spaces/:id' => 'spaces#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'mangas#index'
  resources :mangas

  root to: 'genres#index'
  resources :genres

  root to: 'auteurs#index'
  resources :auteurs

  root to: 'spaces#index'
  resources :spaces
  
end
