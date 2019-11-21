class SandwichOrder < ApplicationRecord
  belongs_to :order
  belongs_to :sandwich
end
