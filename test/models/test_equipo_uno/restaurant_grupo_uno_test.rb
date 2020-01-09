require 'test_helper'

class RestaurantGrupoUnoTest < ActiveSupport::TestCase

  def setup
    @restaurant = Restaurant.new(name:"Prueba", address:"Los Chaguaramos, Calle Bellas Artes",
                                 map_location:"long323,lat233", zip_code: "333", capacity: 40, 
                                 description: "Espacioso y lujoso", rif: "J-23456487-6", start_time: "2019-12-13 10:30:00", 
                                 end_time: "2019-12-17 11:30:00" , particular: true, user_id: 3, place_id: 3)
  end


  test "Validar_nombre_restaurante_vacio" do 
    @restaurant.name = " "
    @restaurant.valid?
    assert_not @restaurant.errors[:name].empty?, "INVALIDO: Guardando el restaurante sin nombre"
  end

  test "Validar_direccion_restaurante_vacio" do 
    @restaurant.address = " "
    @restaurant.valid?
    assert_not @restaurant.errors[:address].empty?, "INVALIDO: Guardando el restaurante sin direccion"
  end

  test "Validar_zona_postal_restaurante_vacio" do 
    @restaurant.zip_code = " "
    @restaurant.valid?
    assert_not @restaurant.errors[:zip_code].empty?, "INVALIDO: Guardando el restaurante sin zona postal"
  end

  test "Validar_capacidad_restaurante_vacio" do 
    @restaurant.capacity = " "
    @restaurant.valid?
    assert_not @restaurant.errors[:capacity].empty?, "INVALIDO: Guardando el restaurante sin capacidad"
  end

  test "Validar_descripcion_restaurante_vacio" do 
    @restaurant.description = " "
    @restaurant.valid?
    assert_not @restaurant.errors[:description].empty?, "INVALIDO: Guardando el restaurante sin descripción"
  end

  test "Validar_rif_restaurante_vacio" do 
    @restaurant.rif = " " 
    @restaurant.valid?
    assert_not @restaurant.errors[:rif].empty?, "INVALIDO: Guardando el restaurante sin RIF"
  end

  test "Validar_horario_inicial_restaurante_vacio" do 
    @restaurant.start_time = " "
    @restaurant.valid?
    assert_not @restaurant.errors[:start_time].empty?, "INVALIDO: Guardando el restaurante sin horario inicial"
  end

  test "Validar_horario_fin_restaurante_vacio" do 
    @restaurant.end_time = " "
    @restaurant.valid?
    assert_not @restaurant.errors[:end_time].empty?, "INVALIDO: Guardando el restaurante sin horario fin"
  end

  test "Validar_zona_postal_numerica_restaurante" do 
    @restaurant.zip_code = "1040GH?"
    @restaurant.valid?
    assert_not @restaurant.errors[:zip_code].empty?, "INVALIDO: La zona postal son solo numeros"
  end

  test "Validar_longitud_zona_postal" do 
    @restaurant.zip_code = "123"
    @restaurant.valid?
    assert_not @restaurant.errors[:zip_code].empty?, "INVALIDO: La zona postal tiene una longitud de 4 números"
  end

  test "Validar_capacidad_numerica_restaurante" do 
    @restaurant.capacity = "40FF!!"
    @restaurant.valid?
    assert_not @restaurant.errors[:capacity].empty?, "INVALIDO: La capacidad del restaurante son solo numeros"
  end

  test "Validar_formato_rif_restaurante" do 
    @restaurant.rif = "E8077g!!"
    @restaurant.valid?
    assert_not @restaurant.errors[:rif].empty?, "INVALIDO: El formato del rif es incorrecto"
  end

  test "Validar_longitud_rif_restaurante" do 
    @restaurant.rif = "J-123-4"
    @restaurant.valid?
    assert_not @restaurant.errors[:rif].empty?, "INVALIDO: El rif tiene una longitud de 12 caracteres"
  end

  test "Validar_rif_unico" do 
    restaurantuno = Restaurant.new
    restaurantuno.rif = "J-45678123-7"
    restaurantdos = Restaurant.new
    restaurantdos.rif = "J-45678123-7"
    restaurantdos.valid?
    assert restaurantdos.errors[:rif].empty?, "INVALIDO: El rif ya está registrado en nuestro sistema"
  end

end
