# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'landing#index'
  get '/posts', to: 'posts#all'
  resources :tags

  resources :courses do
    resources :posts do
      member do
        get 'increase_rating'
      end
      resources :comments, except: :new do
        resources :nested_comments
      end
    end
  end
end
