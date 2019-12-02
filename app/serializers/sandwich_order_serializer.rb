class SandwichOrderSerializer < ActiveModel::Serializer
  attributes :id, :order_id, :sandwich_id, :price, :comment
  belongs_to :order
  belongs_to :sandwich 
end
