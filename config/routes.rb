Rails.application.routes.draw do
  comfy_route :cms_admin, :path => '/admin'


  resources :users
  root to: 'users#index', via: :get

  # Make sure this routeset is defined last
  comfy_route :cms, :path => '/', :sitemap => false
end
