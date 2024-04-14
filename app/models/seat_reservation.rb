class SeatReservation < ApplicationRecord
  belongs_to :show
  belongs_to :cinema
  belongs_to :user, optional: true

  validates :seat_position, presence: true
  validates :seat_position, uniqueness: { scope: :show_id, message: "Seat not available" }

end
