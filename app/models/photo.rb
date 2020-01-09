class Photo < ApplicationRecord
  belongs_to :restaurant, optional:true
  belongs_to :place, optional:true

  scope :photos_of_restaurant, ->(id) {where('restaurant_id = ' + id)}
  validates :photo, :presence => {:message => "El campo nombre no puede estar vacio"},
      format: {with: /([a-zA-Z0-9\s_\\.\-\(\):])+(.png|.jpg|.jpeg)\Z/i, message: "Las extensiones permitidas son .png .gif .jpg .jpeg"}

  scope :estados, ->(rest){
  	(where "place_id = ?",rest).pluck('photo')
  } 

  scope :photo_restaurant, -> (id) {where("restaurant_id in (select id from restaurants where id = ?)", id).pluck('photo')}

end
