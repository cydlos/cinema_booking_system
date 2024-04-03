class SeatReservation < ApplicationRecord
  belongs_to :show
  belongs_to :user, optional: true

  validates :seat_position, presence: true
  validates :seat_position, uniqueness: { scope: :show_id, message: "Assento indisponível" }
  validate :seat_must_be_available, on: :create

end
