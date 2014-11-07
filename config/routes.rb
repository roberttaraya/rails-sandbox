Rails.application.routes.draw do

	#Casein routes
	namespace :casein do
		resources :users
	end

  resources :users
  root to: 'users#index', via: :get
end
