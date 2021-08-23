class OutfitsController < ApplicationController
  def index
    @outfits = Outfit.all
  end

  def new
    @outfit = Outfit.new
  end

  def create
    @outfit = Outfit.new(outfit_params)

    if @outfit.save
      redirect_to @outfit, notice: 'Your outfit was succesfully created'
    else
      render :new
    end
  end

  private

  def outfit_params
    params.require(:outfit).permit(:name, :locationdescription, :price_per_day)
  end
end
