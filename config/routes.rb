Rails.application.routes.draw do

  devise_for :users
  get 'home/private'

  root to: 'posts#index'
  get '/salut(/:name)', to: 'pages#salut', as: 'salut'
  resources :posts do
    resources :comments
  end
  
  


  # For details ,on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
