Rails.application.routes.draw do
  root to: 'tweets#index'
  resources :tags
  resources :tweets
end
