require 'test_helper'

class PlateTest < ActiveSupport::TestCase
  
  def setup    
    @platos = plates(:seis_one)  
  end

  #Verificar que no agregue plato sin nombre
  test "Prueba fallida, sin nombre" do
    plato = Plate.new(description: "arroz", price: 100)
    plato.valid?
    assert_not plato.errors[:name].empty?, "INVALIDO, debe tener nombre"
  end

  #Verificar que no agregue plato sin descripcion
  test "Prueba fallida, sin descripcion" do
    plato = Plate.new(name: "arroz", price: 100)
    plato.valid?
    assert_not plato.errors[:description].empty?, "INVALIDO, debe tener descripcion"
  end

  #Verificar que no agregue plato sin precio
  test "Prueba fallida, sin precio" do
    plato = Plate.new(name: "arroz", description: "es muy blanco")
    plato.valid?
    assert_not plato.errors[:price].empty?, "INVALIDO, debe tener precio"
  end
end