require 'test_helper'

class PlaceTest < ActiveSupport::TestCase

  #**************CONSULTAR**************#
	test "Consulta general de lugares" do
	 assert_not_empty Place.all,"ERROR. No hay lugares registrados"
	end

	test "Consulta por restaurantes en Amazonas" do
      a = Restaurant.joins(:place).includes(:place).where("places.name = 'Amazonas'")
      assert_not_empty a,"ERROR. El estado no posee restaurantes"
   end
   test "Consulta por restaurantes en Distrito Capital" do
      a = Restaurant.joins(:place).includes(:place).where("places.name = 'Distrito Capital'")
     assert_not_empty a,"ERROR. El estado no posee restaurantes"
   end
   
   test "Consulta por restaurantes en Apure" do
      a = Restaurant.joins(:place).includes(:place).where("places.name = 'Apure'")
     assert_not_empty a,"ERROR. El estado no posee restaurantes"
   end



end
