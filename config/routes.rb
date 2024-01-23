Rails.application.routes.draw do
  resources :reporters
  resources :media
  devise_for :users
  get "up" => "rails/health#show", as: :rails_health_check

  root "rails/health#show"
end
