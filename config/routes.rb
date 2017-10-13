Rails.application.routes.draw do

  root 'application#home'
  resources :users
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/sessions/destroy' => 'sessions#destroy'
  post 'rides/:id' => 'rides#take_ride'
  resources :attractions
end
