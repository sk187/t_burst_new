Rails.application.routes.draw do

  root 'static_pages#home'

  get '/computer', to: 'static_pages#computer'
  resources :users, only: [:show, :index] #for user stats and leaderboard
  resources :hashtags, only: [:index] #for hashtag leaderboard

  resources :application, only: [:create]

  get '/signout', to: 'sessions#destroy', :as => "signout"
  get 'auth/:provider/callback', to: 'sessions#create'
  


end
