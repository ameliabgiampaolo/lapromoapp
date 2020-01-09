class Reservation < ApplicationRecord
  belongs_to :promo
  belongs_to :hist_yumi
  belongs_to :restaurant
  belongs_to :diner
  has_one :comment
end
