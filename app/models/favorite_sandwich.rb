class FavoriteSandwich < ApplicationRecord
    belongs_to :user
    belongs_to :sandwich
    validate :unique_sandwich 

    def unique_sandwich
        if FavoriteSandwich.all.find{ |favSandwich| favSandwich.user_id == self.user_id && favSandwich.sandwich_id == self.sandwich_id }
            errors.add(:sandwich_id, "Already added to favorites")
        end
    end

  end
  