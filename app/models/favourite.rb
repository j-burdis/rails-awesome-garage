class Favourite < ApplicationRecord
  belongs_to :car
  belongs_to :owner
  validates :car_id, uniqueness: { scope: :owner_id, message: "has already been favourited by you" }
end
