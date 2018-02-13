Rails.application.routes.draw do
  resources :lists
  namespace :api, defaults: { format: :json } do
    resources :users
  end
end
