class SeatReservation < ApplicationRecord
  belongs_to :show
  belongs_to :user, optional: true

  validates :seat_position, presence: true
  validates :seat_position, uniqueness: { scope: :show_id, message: "Assento indisponível" }
  validate :seat_must_be_available, on: :create

    private
    
    def seat_must_be_available
      existing_reservation = SeatReservation.where(show_id: show_id, seat_position: seat_number).exists?
      errors.add(:seat_position, "is already taken") if existing_reservation
    end
  end
