class Order < ApplicationRecord
  belongs_to :user
  has_many :sandwich_orders
  has_many :sandwiches, through: :sandwich_orders
end
