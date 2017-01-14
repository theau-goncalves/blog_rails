Rails.application.routes.draw do

  

  root to: 'pages#home'
  get '/salut(/:name)', to: 'pages#salut', as: 'salut'
  get '/articles', to: 'posts#index', as: 'posts'
  # For details ,on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
