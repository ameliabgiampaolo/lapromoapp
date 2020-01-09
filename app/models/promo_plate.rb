class PromoPlate < ApplicationRecord
  belongs_to :plate
  belongs_to :promo

  validates :plate_id, :presence => {:message => "Falta indicar el plato"}
  validates :promo_id, :presence => {:message => "Falta indicar la promo"}
end
