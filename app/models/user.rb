class User < ApplicationRecord
    validates_uniqueness_of :email
    has_many :orders 

    def recent_orders
        Order.where(user_id:self.id).order(created_at: :desc).limit(5)
    end
end
