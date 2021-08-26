class OutfitsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    # Search feature
    if params[:query]
      @outfits = Outfit.search_by_name_address_and_description(params[:query])
    else
      @outfits = policy_scope(Outfit).order(created_at: :desc) # replaces @outfits = Outfit.all
    end
    policy_scope @outfits

    # Map feature
    @markers = @outfits.geocoded.map do |outfit|
      {
        lat: outfit.latitude,
        lng: outfit.longitude,
        info_window: render_to_string(partial: "info_window", locals: { outfit: outfit })
      }
    end
  end

  def show
    @outfit = Outfit.find(params[:id])
    authorize @outfit
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
