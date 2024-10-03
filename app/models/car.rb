class Car < ApplicationRecord
  belongs_to :owner
  validates :brand, :model, :fuel, presence: true
  validates :year, presence: true, numericality: { only_integer: true }
  
end
