Rails.application.routes.draw do
  resources :reporters
  resources :media do
    resources :reporters, only: [:new]
  end
  devise_for :users
  get "up" => "rails/health#show", as: :rails_health_check

  root "rails/health#show"
end
