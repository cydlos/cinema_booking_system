class Cinema < ApplicationRecord
  has_many :shows
  has_many :seat_reservations, through: :shows
end
