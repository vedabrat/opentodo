Rails.application.routes.draw do
  resources :lists

  namespace :api, defaults: { format: :json } do # expect to receive JSON requests
    resources :users do
      resources :lists
    end

    resources :lists, only: [] do
      resources :items, only: [:create, :update]
    end

    resources :items, only: [:destroy]
    end
  end
