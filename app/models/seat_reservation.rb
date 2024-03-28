class SeatReservation < ApplicationRecord
  belongs_to :show
  validates :seat_position, uniqueness: { scope: :show_id }
end
