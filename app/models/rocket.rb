class Rocket < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :name, :description, :price, :capacity, :range, :power, presence: true
end
