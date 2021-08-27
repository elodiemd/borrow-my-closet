class BookingsController < ApplicationController
  # TO DO
  # 1. organize controller
  # 2. check if the end date doesn't need to be -1
  # 3. try to do modal

  def index
    @me = current_user
    @bookings_borrower = policy_scope(Booking).order(created_at: :desc) # required policy scope
    @bookings_borrower_pending = Booking.where(user_id: @me, status: 'pending')
    @bookings_borrower_accepted = Booking.where(user_id: @me, status: 'accepted')
    @my_outfits = @me.outfits
    @bookings_lender_pending = Booking.where(outfit_id: @my_outfits.pluck(:id), status: 'pending')
    @bookings_lender_accepted = Booking.where(outfit_id: @my_outfits.pluck(:id), status: 'accepted')
  end

  def new
    @outfit = Outfit.find(params[:outfit_id])
    @booking = Booking.new
    booked_dates
    authorize @booking
  end

  def create
    set_dates
    @outfit = Outfit.find(params[:outfit_id])
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

  def accept
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.update(status: "accepted")
    redirect_to bookings_path
  end

  def reject
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.update(status: "rejected")
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def update_booking_params
    params.require(:booking).permit(:status)
  end

  def booked_dates
    @booked_dates = Booking.where(outfit: @outfit).map { |booking| { from: booking[:start_date].to_s, to: booking[:end_date].to_s } }
  end
end
