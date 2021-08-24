class OutfitsController < ApplicationController
  def index
    @outfits = Outfit.all
    @outfits = policy_scope(Outfit).order(created_at: :desc)
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
