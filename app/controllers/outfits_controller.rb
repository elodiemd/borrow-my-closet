class OutfitsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @outfits = policy_scope(Outfit).order(created_at: :desc) # replaces @outfits = Outfit.all
    @markers = @outfits.geocoded.map do |outfit|
      {
        lat: outfit.latitude,
        lng: outfit.longitude,
        info_window: render_to_string(partial: "info_window", locals: { outfit: outfit }), # popups on map
        image_url: helpers.asset_url('map_marker.png') # custom map marker
      }
    end
  end

  def show
    @outfit = Outfit.find(params[:id])
    authorize @outfit
    @marker = {
      lat: @outfit.latitude,
      lng: @outfit.longitude,
      info_window: render_to_string(partial: "info_window", locals: { outfit: @outfit }), # popups on map
      image_url: helpers.asset_url('map_marker.png') # custom map marker
    }
  end

  def new
    @outfit = Outfit.new
    authorize @outfit
  end

  def create
    @outfit = Outfit.new(outfit_params)
    @user = current_user
    @outfit.user = @user
    authorize @outfit

    if @outfit.save
      redirect_to outfit_path(@outfit), notice: 'Your outfit was succesfully created'
    else
      render :new
    end
  end
  # views: need to update views with pundit

  private

  def outfit_params
    params.require(:outfit).permit(:name, :address, :description, :price_per_day, photos: [])
  end
end
