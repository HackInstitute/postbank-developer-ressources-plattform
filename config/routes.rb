Rails.application.routes.draw do

  root 'application#index'

  get '/certificate', to: 'certificate#show'
  resources :users
  resources :authentication_keys

end
