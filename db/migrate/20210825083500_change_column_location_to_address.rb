class ChangeColumnLocationToAddress < ActiveRecord::Migration[6.0]
  def change
    rename_column :outfits, :location, :address
  end
end
