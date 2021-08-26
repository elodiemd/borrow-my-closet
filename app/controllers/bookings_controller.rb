class BookingsController < ApplicationController

  def index
    @bookings = policy_scope(Booking).order(created_at: :desc)
  end

  def new
    @outfit = Outfit.find(params[:outfit_id])
    @booking = Booking.new
    @booked_dates = Booking.where(:outfit == @outfit).map { |booking| { from: booking[:start_date].to_s, to: booking[:end_date].to_s } }
    authorize @booking
  end

  def create
    @outfit = Outfit.find(params[:outfit_id])
    set_dates
    @booking = Booking.new(booking_params)
    @booking.outfit = @outfit
    @booking.user = current_user
    @booking.status = 'pending'
    authorize @booking
    if @booking.save
      redirect_to outfit_path(@outfit), notice: 'Your booking has been created and is currently pending for approval'
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_dates
    dates = params[:booking][:start_date].split
    params[:booking][:start_date] = dates[0]
    params[:booking][:end_date] = dates[2]
  end
end
