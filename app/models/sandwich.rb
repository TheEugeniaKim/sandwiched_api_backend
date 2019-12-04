class Sandwich < ApplicationRecord
    has_many :sandwich_ingredients
    has_many :ingredients, through: :sandwich_ingredients
    has_many :sandwich_orders
    has_many :orders, through: :sandwich_orders
    has_many :users
    has_many :users, through: :favorite_sandwiches 
end
