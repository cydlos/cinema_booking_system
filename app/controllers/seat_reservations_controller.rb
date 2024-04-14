class SeatReservationsController < ApplicationController

before_action :authenticate_user!, only: [:new, :create, :index]

def new
  @show = Show.find(params[:show_id]) # Assumindo que você tem um show_id
  @seat_reservation = @show.seat_reservations.build
  @unavailable_seats = @show.seat_reservations.pluck(:seat_reservation)
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
  end
end
