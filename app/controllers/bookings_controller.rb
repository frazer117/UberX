class BookingsController < ApplicationController
# before_action :set_rocket, only: [:new, :create]
before_action :set_booking, only: [:destroy]

  def index
    @bookings = current_user.bookings
  end

  def new
    @rocket = Rocket.find(params[:rocket_id])
    @booking = Booking.new
  end

  def create
    @rocket = Rocket.find(params[:rocket_id])
    @booking = Booking.new(booking_params)
    @booking.rocket = @rocket
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

private


  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:booking_start_date, :booking_end_date, :group_size)
  end
end
