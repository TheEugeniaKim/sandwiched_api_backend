class SandwichSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :price 
  has_many :ingredients
end
