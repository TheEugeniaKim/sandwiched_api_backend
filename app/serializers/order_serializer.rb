class OrderSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :created_at
  has_many :sandwich_orders
end
