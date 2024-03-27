class Show < ApplicationRecord
  belongs_to :cinema
  has_many :seat_reservations
end
