class Outfit < ApplicationRecord
  belongs_to :user
  has_many_attached :photos

  # Validation
  validates :name, :description, :address, :price_per_day, :photos, presence: true
  validates :price_per_day, numericality: { greater_than: 0, lower_than: 10000 }
  validates :name, length: { minimum: 3 }
  validates :address, length: { minimum: 5 }
  validates :description, length: { minimum: 10 }

  # Map feature
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # Search feature
  include PgSearch::Model
  pg_search_scope :search_by_name_address_and_description,
    against: [ :name, :address, :description ],
    using: {
      tsearch: { prefix: true }
    }
end
