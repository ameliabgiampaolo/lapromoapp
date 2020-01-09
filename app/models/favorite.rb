class Favorite < ApplicationRecord
  belongs_to :restaurant
  belongs_to :diner
end
