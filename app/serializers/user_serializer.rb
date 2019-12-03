class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :birthday, :phone, :orders_recent, :favorites

  def orders_recent
    ActiveModel::SerializableResource.new(object.recent_orders, each_serializer: OrderSerializer)
  end
  
  def favorites
    ActiveModel::SerializableResource.new(object.favorites, each_serializer: FavoriteSandwichSerializer)
  end

end
