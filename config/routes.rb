Rails.application.routes.draw do
  resources :sandwich_orders
  resources :orders
  resources :sandwich_ingredients
  resources :sandwiches
  resources :ingredients
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
