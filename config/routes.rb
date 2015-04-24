Rails.application.routes.draw do

  resources :users

  get "/log-in" => "sessions#new"
  post '/log-in' => "sessions#create"
  get "/log-out" => "sessions#destroy"

  root :to => 'home#index'
end
