Rails.application.routes.draw do

  root 'static_pages#home'

  get '/computer', to: 'static_pages#computer'
  resources :users, only: [:show, :index] #for user stats and leaderboard
  resources :hashtags, only: [:index] #for hashtag leaderboard

  resources :application, only: [:create]

  match "auth/:provider/callback" => "sessions#create" , via: [:get, :post]
  match "/signout" => "sessions#destroy", via: [:get, :post], :as => "signout"


end
