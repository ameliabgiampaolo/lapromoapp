require 'test_helper'

class PromoTest < ActiveSupport::TestCase

	#Verificar que agregue una promoción indicando todos sus campos
	test "Prueba correcta" do
		promo = Promo.new(yumis: true, promo_type: "2x1", name: "Gran promoción",
			description: "Promoción en cualquier plato donde pagas 2 por el precio de 1", restaurant_id: 1)
		assert promo.save
	end

	#Verificar que no agregue una promoción sin indicar el tipo de promoción
	test "Prueba fallida, sin promo_type" do
		promo = Promo.new(yumis: true, name: "Gran promoción",
			description: "Promoción en cualquier plato donde pagas 2 por el precio de 1")
		promo.valid?
		assert_not promo.errors[:promo_type].empty?, "INVALIDO, no debería guardar una promoción sin el tipo"
	end

	#Verificar que no agregue una promoción sin descripción
	test "Prueba fallida, sin description" do
		promo = Promo.new(yumis: true,  promo_type: "2x1", name: "Gran promoción")
		promo.valid?
		assert_not promo.errors[:description].empty?, "INVALIDO, no debería guardar una promoción sin descripción"
	end

	#Verificar que no agregue una promoción sin nombre
	test "Prueba fallida, sin name" do
		promo = Promo.new(yumis: true,  promo_type: "2x1", description: "Promoción en cualquier plato donde pagas 2 por el precio de 1")
		promo.valid?
		assert_not promo.errors[:name].empty?, "INVALIDO, no debería guardar una promoción sin nombre"
	end

	#Verificar que no agregue una promoción con un nombre no válido
	test "Crear con nombre menor a 5 caracteres" do
		promo = Promo.new(yumis: true, promo_type: "2x1", name: "Gr",
		description: "Promoción en cualquier plato donde pagas 2 por el precio de 1")
		assert_not promo.save, "INVALIDO, el nombre no debe ser menor a 5 caracteres"
	end
end
