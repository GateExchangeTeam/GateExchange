# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'landing#index'
  get '/posts', to: 'posts#all'

  resources :courses do
    resources :posts do
      member do
        put 'like', to: 'posts#like'
        put 'dislike', to: 'posts#dislike'
      end
      resources :comments do
        resources :comments
      end
    end
  end
end
