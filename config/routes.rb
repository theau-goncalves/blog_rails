Rails.application.routes.draw do

  devise_for :users
  get 'home/private'

  root to: 'pages#home'
  get '/salut(/:name)', to: 'pages#salut', as: 'salut'
  resources :posts
  


  # For details ,on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
