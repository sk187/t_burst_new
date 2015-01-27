Rails.application.routes.draw do
  root 'matches#show'
  resources :matches, only: [:show]
end
