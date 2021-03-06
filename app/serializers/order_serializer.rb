class OrderSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :created_at
  has_many :sandwiches, through: :sandwich_order  
  has_many :sandwich_orders
end
