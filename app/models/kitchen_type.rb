class KitchenType < ApplicationRecord
    has_many :restaurant_kitchens
    has_many :restaurants, through: :restaurant_kitchens
    scope :kitchen_type_rest, -> (id) { select("kitchen_types.name").where("kitchen_types.id in (select restaurant_kitchens.kitchen_type_id from restaurant_kitchens where restaurant_kitchens.restaurant_id in (select restaurants.id from restaurants where restaurants.id = ?))", id) }

    validates :name, :presence => {:message => "Falta el nombre"}
end
