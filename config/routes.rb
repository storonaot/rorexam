Rails.application.routes.draw do

  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'

  resources :themes
  resources :images
  resources :values
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  match 'index', to: 'main#index', via: :get
  match 'help', to: 'main#help', via: :get
  match 'contacts', to: 'main#contacts', via: :get
  match 'about', to: 'main#about', via: :get

  match 'work', to: 'work#index', via: :get
  match 'choose_image', to: 'work#choose_image', via: :get
  match 'choose_theme', to: 'work#choose_theme', via: :get
  match 'display_theme', to: 'work#display_theme', via: :post

  root 'main#index'

  match 'signup', to: 'users#new', via: :get
  match 'signin', to: 'sessions#new', via: :get
  match 'signout', to: 'sessions#destroy', via: :delete

  namespace :api, defaults: { format: :json } do

    match 'next_image', to: 'api#next_image', via: :get
    match 'prev_image', to: 'api#prev_image', via: 'get'
    match 'save_value', to: 'api#save_value', via: :get
  end

  match 'results_list', to: 'work#results_list', via: :get

  match 'save_value', to: 'api/api#save_value', via: :get
end
