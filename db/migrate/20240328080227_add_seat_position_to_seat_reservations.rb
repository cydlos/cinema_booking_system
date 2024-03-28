class AddSeatPositionToSeatReservations < ActiveRecord::Migration[7.0]
  def change
    add_column :seat_reservations, :seat_position, :string
  end
end
