class BookingsController < ApplicationController

  def index
    @bookings = policy_scope(Booking).order(created_at: :desc)
  end

  def new
    @outfit = Outfit.find(params[:outfit_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @outfit = Outfit.find(params[:outfit_id])
    @booking = Booking.new(booking_params)
    @booking.outfit = @outfit
    authorize @booking

    if @booking.save
      redirect_to outfit_bookings_path(@outfit), notice: 'Your booking has been created and is currently pending for approval'
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date)
  end
end
