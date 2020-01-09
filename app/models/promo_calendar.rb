class PromoCalendar < ApplicationRecord
  belongs_to :promo
  belongs_to :calendar

  validates :promo_id, :presence => {:message => "Falta indicar la promocion"}
  validates :calendar_id, :presence => {:message => "Falta indicar la fecha"}
end
