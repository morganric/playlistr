Rails.application.routes.draw do


  resources :profiles

  resources :playlists
  resources :tracks

  mount Attachinary::Engine => "/attachinary"

  get '/playlists/:id/play' => 'playlists#plays', as: :playlist_play

  get 'about' => 'visitors#about', as: :about
  get 'genres' => 'visitors#genres', as: :genres
  post 'search' => 'visitors#search', as: :search


  mount Upmin::Engine => '/admin'
  root to: 'playlists#index'
  devise_for :users
  resources :users
end
