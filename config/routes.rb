Rails.application.routes.draw do

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'

  resources :themes
  resources :images
  resources :values
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  

  match 'index', to: 'main#index', via: :get
  match 'help', to: 'main#help', via: :get
  match 'contacts', to: 'main#contacts', via: :get
  match 'about', to: 'main#about', via: :get

  root 'main#index'
  # root 'work#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match 'signup',   to: 'users#new',            via: 'get'
  match 'signin',   to: 'sessions#new',         via: 'get'
  match 'signout',  to: 'sessions#destroy',     via: 'delete'
end
