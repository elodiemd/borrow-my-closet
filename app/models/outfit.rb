class Outfit < ApplicationRecord
  belongs_to :user
  has_many_attached :photos

  validates :name, :description, :location, :price_per_day, presence: true
  validates :price_per_day, numericality: { greater_than: 0, lower_than: 10000 }
  validates :name, length: { minimum: 3 }
  validates :location, length: { minimum: 10 }
  validates :description, length: { minimum: 15 }
end
