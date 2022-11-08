Rails.application.routes.draw do
  root 'courses#index'
  resources :tags

  resources :courses do
    resources :posts do
      resources :comments do
        resources :nested_comments
      end
    end
  end
end
