class CreateSeatReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :seat_reservations do |t|
      t.string :seat_number
      t.references :show, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
