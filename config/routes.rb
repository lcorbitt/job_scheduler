require 'sidekiq/web'

Rails.application.routes.draw do
  resources :meetings
  devise_for :users

  root to: "home#index"

  get 'dashboard', :to => 'dashboard#index'

end
