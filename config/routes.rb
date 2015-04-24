Rails.application.routes.draw do

  resources :users

  get "/log-in" => "sessions#new"
  get "/log-out" => "sessions#destroy", as: :log_out

  root :to => 'home#index'
end
