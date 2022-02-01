class Rocket < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, :description, :price, :capacity, :range, :power, presence: true
  validates :name, uniqueness: true
end
