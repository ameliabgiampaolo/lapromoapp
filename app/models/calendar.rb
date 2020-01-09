class Calendar < ApplicationRecord
	has_many :promo_calendars
	has_many :promos, through: :promo_calendars
end
