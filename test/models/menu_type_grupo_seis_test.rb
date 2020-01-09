require 'test_helper'

class MenuTypeTest < ActiveSupport::TestCase
  
  #Verificar que no agregue una categoria sin nombre
  test "Prueba fallida, sin nombre" do
    categoria = MenuType.new()
    categoria.valid?
    assert_not categoria.errors[:name].empty?, "Por favor, indique el nombre"
  end
end
