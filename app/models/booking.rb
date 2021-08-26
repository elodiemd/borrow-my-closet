class Booking < ApplicationRecord
  belongs_to :outfit
  belongs_to :user

  validates :date, presence: true
end
