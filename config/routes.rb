Rails.application.routes.draw do
  root 'application#index'

  get '/certificate', to: 'certificate#show'
end
