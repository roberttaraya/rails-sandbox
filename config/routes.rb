Rails.application.routes.draw do
  comfy_route :cms_admin, :path => '/admin'

  # Make sure this routeset is defined last
  comfy_route :cms, :path => '/', :sitemap => false

  resources :users
  root to: 'users#index', via: :get
end
