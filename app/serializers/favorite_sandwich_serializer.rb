class FavoriteSandwichSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :user
  has_many :sandwiches
end
