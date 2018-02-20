Rails.application.routes.draw do
  resources :payments
  get 'dashboard/index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :orders
  devise_for :users
  resources :recipes
  resources :categories
  resources :products
  resources :suppliers
  resources :clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root 'dashboard#index'
end
