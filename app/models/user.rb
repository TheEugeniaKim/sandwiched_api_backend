class User < ApplicationRecord
    validates_uniqueness_of :email
    has_many :orders 
    has_many :favorite_sandwiches
    has_many :sandwiches, through: :favorite_sandwiches

    def recent_orders
        Order.where(user_id:self.id).order(created_at: :desc).limit(5)
    end

    
end
