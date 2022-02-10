class Rocket < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, :description, :price, :capacity, :range, :power, :address, :longitude, :latitude, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
