class Rocket < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :name, :description, :price, :capacity, :range, :power, presence: true

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name, :description, :price, :capacity, :range, :power ],
    associated_against: {
      bookings: [ :booking_start_date, :booking_end_date, :group_size ]
    },
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
