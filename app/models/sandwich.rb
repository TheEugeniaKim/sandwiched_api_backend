class Sandwich < ApplicationRecord
    has_many :sandwich_ingredients
    has_many :ingredients, through: :sandwich_ingredients
    has_many :sandwich_orders
    has_many :orders, through: :sandwich_orders
    belongs_to :user, optional:true
end
