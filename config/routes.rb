Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'mangas#index'
  resources :mangas

  root to: 'genres#index'
  resources :genres

  root to: 'auteurs#index'
  resources :auteurs

  
end
