class SeatReservation < ApplicationRecord
  belongs_to :show
  belongs_to :user, optional: true

  validates :seat_reservation, presence: true
  validates :seat_reservation, uniqueness: { scope: :show_id, message: "Assento indisponível" }
  validate :seat_must_be_available, on: :create
end
