Rails.application.routes.draw do
  resources :sandwich_orders
  resources :orders
  resources :sandwich_ingredients
  resources :sandwiches
  resources :ingredients
  resources :users

  post 'users/login/', to: 'users#login'
  post 'orders', to: 'orders#create'
  post 'sandwich_orders', to: 'sandwich_orders#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
