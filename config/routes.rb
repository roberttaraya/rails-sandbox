Rails.application.routes.draw do
  resources :users
  resources :permits
  root to: 'users#index', via: :get
end
