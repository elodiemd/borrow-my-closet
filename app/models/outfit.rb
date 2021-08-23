class Outfit < ApplicationRecord
  belongs_to :user

  validates :name, :description, :location, :price_per_day, presence: true
end
