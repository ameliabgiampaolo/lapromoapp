require 'test_helper'

class RestaurantKitchenTest < ActiveSupport::TestCase
    
  #Verificar que no agregue tipo de cocina sin especificar el restaurante
  test "Prueba fallida, sin restaurante" do
    restaurant_kitchen = RestaurantKitchen.new(kitchen_type_id: 1)
    restaurant_kitchen.valid?
    assert_not restaurant_kitchen.errors[:restaurant_id].empty?, "Por favor, indique el restaurante"
  end

  #Verificar que no agregue platos a la promoción sin especificar el tipo de cocina
  test "Prueba fallida, sin tipo de cocina" do
    restaurant_kitchen = RestaurantKitchen.new(restaurant_id: 1)
    restaurant_kitchen.valid?
    assert_not restaurant_kitchen.errors[:kitchen_type_id].empty?, "Por favor, indique el tipo de cocina"
  end

end
