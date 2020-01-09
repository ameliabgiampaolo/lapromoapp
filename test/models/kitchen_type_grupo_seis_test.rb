require 'test_helper'

class KitchenTypeTest < ActiveSupport::TestCase
  
  #Verificar que agregue un tipo de cocina con todos sus campos
  test "Prueba correcta" do
    kitchen_type = KitchenType.new(name: "Italiana")
    assert kitchen_type.save
  end

  #Verificar que no agregue un tipo de cocina sin nombre
  test "Prueba fallida, sin nombre" do
    kitchen_type = KitchenType.new()
    kitchen_type.valid?
    assert_not kitchen_type.errors[:name].empty?, "Por favor, indique el nombre"
  end
end
