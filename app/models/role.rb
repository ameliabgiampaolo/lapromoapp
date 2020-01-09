class Role < ApplicationRecord
	has_many :users
	ROLES = ["Administrador", "Restaurante", "Comensal"]
end
