class Car < ApplicationRecord
  belongs_to :owner
  has_many :reviews
  has_many :favourites
  validates :brand, :model, :fuel, presence: true
  validates :year, presence: true, numericality: { only_integer: true }
end
