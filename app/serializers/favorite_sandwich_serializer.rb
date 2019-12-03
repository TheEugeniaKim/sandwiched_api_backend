class FavoriteSandwichSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :user
  belongs_to :sandwich
end
