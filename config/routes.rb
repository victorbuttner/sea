Rails.application.routes.draw do
  resources :report_orders_by_users
  resources :pagamentos
  resources :entradas
  get 'venda/index'

  resource :cart, only: [:show,:destroy]

  resources :order_items
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

  authenticated :user do
    if :user.try(:superadmin_role?) || :user.try(:supervisor_role?)
      root 'dashboard#index'
    else
      root 'venda#index'
    end
  end
end


