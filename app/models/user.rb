class User < ApplicationRecord
  has_many :bookings
  has_many :outfits
  has_one_attached :photo
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :outfits

  validates :user_name, uniqueness: true, length: { minimum: 3 }
end
