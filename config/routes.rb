# frozen_string_literal: true

Rails.application.routes.draw do
  root 'landing#index'
  get '/posts', to: 'posts#all'
  resources :tags

  resources :courses do
    resources :posts do
      resources :comments do
        resources :nested_comments
      end
    end
  end
end
