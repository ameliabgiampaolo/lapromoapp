class Place < ApplicationRecord
  self.inheritance_column = nil
  belongs_to :place, optional:true
  has_one :photo
  has_many :places
  has_many :diners
  has_many :restaurants

  scope :list_of_places ,-> {joins(:photo).where(type_place: 'estado').select("places.* ,photos.photo").distinct}

 scope :restaurantes, ->{
   where(id: Place.where(id: Place.where(id:Restaurant.pluck('place_id')).pluck('place_id')).pluck('place_id'))
  }

  scope :estado, ->(placeid){
  	where(id: Place.where(id: Place.where(id: Place.where(id: placeid)).pluck('place_id')).pluck('place_id'))
  }
  scope :municipio, ->(placeid){
	where(id: Place.where(id: Place.where(id: placeid)).pluck('place_id'))
   }



end
