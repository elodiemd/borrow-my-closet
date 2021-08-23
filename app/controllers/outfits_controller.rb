class OutfitsController < ApplicationController
  def index
    @outfits = Outfit.all
  end

  def new
    @outfit = Outfit.new
  end

  def create
    @outfit = Outfit.new(outfit_params)
    @user = User.find(params[:user_id]) 
    @outfit.user = @user

    if @outfit.save
      redirect_to @outfit, notice: 'Your outfit was succesfully created'
    else
      render :new
    end
  end

  private

  def outfit_params
    params.require(:outfit).permit(:name, :location, :description, :price_per_day)
  end
end
