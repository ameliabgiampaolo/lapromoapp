class Plate < ApplicationRecord
  belongs_to :menu_type
  has_many :promo_plates, :dependent => :delete_all
  has_many :promos, through: :promo_plates
  scope :avg_price_rest, ->(id) { where(menu_type_id: MenuType.where(restaurant_id: Restaurant.where(id: id).pluck('id')).pluck('id')).average('price') }

  scope :plates_of_restaurant, ->(id) {joins("JOIN menu_types ON plates.menu_type_id = menu_types.id AND menu_types.restaurant_id = " + id).distinct.select('plates.*').group('plates.id')}
  validates :name, :presence => {:message => "Falta el nombre"}
  validates :description, :presence => {:message => "Falta la descricion"}
  validates :price, :presence => {:message => "Falta el precio"}
end
