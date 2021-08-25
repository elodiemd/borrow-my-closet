class AddCoordinatesToOutfits < ActiveRecord::Migration[6.0]
  def change
    add_column :outfits, :latitude, :float
    add_column :outfits, :longitude, :float
  end
end
