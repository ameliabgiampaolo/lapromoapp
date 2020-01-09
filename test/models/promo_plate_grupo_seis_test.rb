require 'test_helper'

class PromoPlateTest < ActiveSupport::TestCase

    #Verificar que no agregue platos a la promoción sin especificar la promoción
    test "Prueba fallida, sin promoción" do
      promo_plate = PromoPlate.new(plate_id: 1)
      promo_plate.valid?
      assert_not promo_plate.errors[:promo_id].empty?, "INVALIDO, falta la promoción"
    end

    #Verificar que no agregue platos a la promoción sin especificar el plato
    test "Prueba fallida, sin plato" do
      promo_plate = PromoPlate.new(promo_id: 1)
      promo_plate.valid?
      assert_not promo_plate.errors[:plate_id].empty?, "INVALIDO, falta el plato"
    end


end
