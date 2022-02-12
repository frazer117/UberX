class Rocket < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, :description, :price, :capacity, :range, :power, :address, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_one_attached :photo
  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name, :description, :price, :address, :capacity, :range, :power ],
    associated_against: {
      bookings: [ :booking_start_date, :booking_end_date, :group_size ]
    },
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
