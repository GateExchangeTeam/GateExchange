# frozen_string_literal: true

Rails.application.routes.draw do
  root 'landing#index'
  get '/posts', to: 'posts#all'

  resources :tags

  resources :courses do
    resources :posts do
      resources :replies do
        resources :replies
      end
    end
  end


end
