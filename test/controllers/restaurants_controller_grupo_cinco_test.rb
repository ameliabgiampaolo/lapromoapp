require 'test_helper'

class RestaurantsControllerGrupoCincoTest < ActionController::TestCase
  
  include Devise::Test::ControllerHelpers

  def setup
    @controller=RestaurantsController.new
  end

  #test de prueba del warning para busqueda por estado
  test "flash warning por estado" do
    get :buscar_x_estado, params:{place_id: 503}
    assert_equal 'No hay restaurantes registrados en ese estado', flash[:warning]
  end

  #test de prueba del warning para busqueda por tipo de comida
  test "flash warning por tipo de comida" do 
    get :buscar_x_tipo_comida, params:{name: "Comida tipica"}
    assert_equal 'No hay restaurantes registrados con ese tipo de comida', flash[:warning]
  end

  #test que desmuestra que la busqueda fue satisfactoria de restaurantes por estado
  test "ubica path buscar x estado" do 
    get :buscar_x_estado, params:{place_id: 504}
    assert_response :ok
    assert_not_nil assigns(:restaurants)
  end

  #test que demuestra que la busqueda fue satisfactoria de restaurantes por tipo de comida
  test "ubica path buscar x tipo de comida" do
    get :buscar_x_tipo_comida, params:{name: "Comida italiana"}
    assert_response :ok
    assert_not_nil assigns(:restaurants)
  end

end
