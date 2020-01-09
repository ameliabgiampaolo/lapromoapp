class MenuType < ApplicationRecord
  belongs_to :restaurant
  has_many :plates, :dependent => :delete_all

  validates :name, :presence => {:message => "Falta el nombre"}
end
