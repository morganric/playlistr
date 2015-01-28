Rails.application.routes.draw do


  resources :playlists
  resources :tracks

  mount Attachinary::Engine => "/attachinary"

  get '/playlists/:id/play' => 'playlists#plays', as: :playlist_play

  mount Upmin::Engine => '/admin'
  root to: 'playlists#index'
  devise_for :users
  resources :users
end
