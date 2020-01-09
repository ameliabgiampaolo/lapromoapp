class RestaurantKitchen < ApplicationRecord
  belongs_to :restaurant
  belongs_to :kitchen_type

  validates :restaurant_id, :presence => {:message => "Falta indicar el restaurante"}
  validates :kitchen_type_id, :presence => {:message => "Falta indicar el tipo de cocina"}
end
