class AddCinemaIdToSeatReservations < ActiveRecord::Migration[7.0]
  def change
    add_reference :seat_reservations, :cinema, null: false, foreign_key: true
  end
end
