Rails.application.routes.draw do
  root 'courses#index'
  resources :courses
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
