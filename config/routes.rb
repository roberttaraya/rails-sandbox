Rails.application.routes.draw do
  resources :articles

  mount Ckeditor::Engine => '/ckeditor'
  resources :users
  root to: 'articles#index', via: :get
end
