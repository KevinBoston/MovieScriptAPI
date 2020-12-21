Rails.application.routes.draw do
  namespace :api do
    resources :lists, only: [:index, :create, :destroy]
    resources :movies, only: [:index, :create, :destroy]
  end
end