Rails.application.routes.draw do

  get 'main/index'
  get 'main/help'
  get 'main/contacts'
  get 'main/about'

  root 'main#index'
  # root 'work#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
