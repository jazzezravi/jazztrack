=begin
Rails.application.routes.draw do
  resources :comments
  resources :posts
  get 'sessions/create'

  get 'sessions/destroy'

  get 'home/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
=end

#GoogleAuthExample::Application.routes.draw do

Rails.application.routes.draw do
  
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resource :home#, only: [:show]
  resources :comments
  resources :posts

  #~ root to: "posts#index"
  root to: "home#index"
end