Rails.application.routes.draw do
  get 'banners/index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'home#index'
  resources :documents
  resources :managements , only: [:index]
  resources :news_releases
  resources :banners
end
