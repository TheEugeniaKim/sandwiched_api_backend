class FavoriteSandwichSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :sandwich_id
  
end
