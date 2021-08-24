class OutfitsController < ApplicationController
  def index
    @outfits = policy_scope(Outfit).order(created_at: :desc) # replaces @outfits = Outfit.all
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
    @user = User.find(params[:user_id])
    @outfit.user = @user
    authorize @outfit

    if @outfit.save
      redirect_to @outfit, notice: 'Your outfit was succesfully created'
    else
      render :new
    end
  end
  # views: need to update views with pundit

  private

  def outfit_params
    params.require(:outfit).permit(:name, :location, :description, :price_per_day)
  end
end
