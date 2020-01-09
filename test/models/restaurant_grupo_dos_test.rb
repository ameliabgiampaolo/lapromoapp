require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
	test "No hay restaurantes" do
		a = Restaurant.all
		assert_not_empty a, "ERROR. No existen restaurantes registrados"
	end
     test "no guardar restaurante con place_id que no sea parroquia" do
      a = Restaurant.new(user_id:1,place_id:1)
      assert_not a.save, "ERROR. Place_id no pertence a una parroquia"
   end
# 	#**************CONSULTAR**************#
   test "Consulta por Amazonas" do
      a = Restaurant.joins(:place).includes(:place).where("places.name = 'Amazonas'")
      assert_not_empty a,"ERROR. No hay restaurantes registrados en ese estado"
   end

    test "Consulta por Apure" do
      a = Restaurant.joins(:place).includes(:place).where("places.name = 'Apure'")
      assert_not_empty a,"ERROR. No hay restaurantes registrados en ese estado"
   end

      test "Consulta por Distrito Capital" do
      a = Restaurant.joins(:place).includes(:place).where("places.name = 'Distrito Capital'")
     assert_not_empty a,"ERROR. No hay restaurantes registrados en ese estado"
   end

end