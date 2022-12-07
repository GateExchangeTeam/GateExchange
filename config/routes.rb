# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'landing#index'
  get '/posts', to: 'posts#all'
  resources :tags

  resources :courses do
    resources :posts do
      resources :ratings
      resources :comments do
        resources :ratings
        resources :comments
      end
    end
  end
end
