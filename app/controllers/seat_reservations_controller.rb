class SeatReservationsController < ApplicationController
  def new
    @seat_reservation = SeatReservation.new
  end

  def create
    @seat_reservation = SeatReservation.new(seat_reservation_params)
    if @seat_reservation.save
      redirect_to seat_reservations_path, notice: "Reservation created successfully."
    else
      render :new
    end
  end

  def index
    @seat_reservations = SeatReservation.all
  end

  private

  def seat_reservation_params
    params.require(:seat_reservation).permit(:seat_number, :show_id)
    # autenticação do usuário a ser incluída aqui
  end
end
