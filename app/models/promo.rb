class Promo < ApplicationRecord
	# Definiendo relaciones para promo
	belongs_to :restaurant
	has_many :promo_plates, :dependent => :delete_all 
	has_many :plates, through: :promo_plates
	has_many :promo_calendars, :dependent => :delete_all
	has_many :calendars, through: :promo_calendars
	has_many :reservations, :dependent => :delete_all

	scope :promos_of_restaurant, ->(id) {where("restaurant_id =" + id).distinct('promos.id').select('promos.*')}
	scope :dias_promo, ->(id) {joins("JOIN promo_calendars ON promo_calendars.promo_id = promos.id").joins("JOIN calendars ON calendars.id = promo_calendars.calendar_id AND promos.restaurant_id = " + id).select('calendars.final_date,promos.name,promos.id,promos.promo_type,promos.yumis')}
	has_many :reservations, :dependent => :delete_all

	# TDD para el modelo promo

	validates :name, :presence => {:message => "Falta el nombre de la promoción"}
	validates :promo_type, :presence => {:message => "Falta el tipo de promoción"}
	validates :description, :presence => {:message => "Falta la descripción"}
	validates :name, length: {minimum: 5, :message => "El nombre de la promoción debe tener al menos 5 caracteres"}


	after_create :send_new_promo_emails

	after_update :check_if_emails_must_be_sent


	def plates= new_array
		old_array = self.plates

		@plates_changed = self.has_many_changed?(old_array, new_array)

		super new_array
	end

	def calendars= new_array
		old_array = self.calendars

		@calendars_changed = self.has_many_changed?(old_array, new_array)

		super new_array
	end

	def send_new_promo_emails
		self.restaurant.favorites.all.each do |favorite|
			if favorite.diner.favorite_notif 
				PromoMailer.with(diner: favorite.diner, promo: self).new_promo_mail.deliver_now
			end
		end
	end

	def send_updated_promo_emails
		self.restaurant.favorites.all.each do |favorite|
			if favorite.diner.favorite_notif 
				PromoMailer.with(diner: favorite.diner, promo: self).updated_promo_mail.deliver_now
			end
		end
	end

	def check_if_emails_must_be_sent
		name_changed = self.name_previously_changed?
		promo_type_changed = self.promo_type_previously_changed?
		description_changed = self.description_previously_changed?
		yumis_changed = self.yumis_previously_changed?

		if name_changed || promo_type_changed || description_changed || yumis_changed || @plates_changed || @calendars_changed
			self.send_updated_promo_emails
		end
	end

	def has_many_changed?(old_plates, new_plates)
		a = old_plates.map(&:id)
		b = new_plates.map(&:id)

		c = a - b | b - a 

		c.count > 0
	end
end
