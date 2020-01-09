require 'test_helper'

class RestaurantsGrupoNueveControllerTest < ActionController::TestCase
  
  include Devise::Test::ControllerHelpers
  
  def setup 
    @controller = RestaurantsController.new
  end
  # test para mostrar mensajes de error en caso de que no haya menu disponible
  test "Mostrar mensaje de error si no hay menu disponible" do
    get :restaurant_info, params:{restaurantID:1}
    assert_equal 'Este restaurante aun no posee un menú', flash[:warning]
  end
  # test para mensajes de error en caso de que exista el restaurant
  test "Mostrar mensaje de error si no hay restaurant disponible" do
    get :restaurant_info, params:{restaurantID:3}
    assert_equal 'Este restaurante no existe, por favor vuelva a la página de inicio', flash[:error]
  end
  # test para mensajes de error en caso de que no existan calificaciones
  test "Mostrar mensaje de error si no hay calificaciones disponibles" do 
    get :restaurant_info, params:{restaurantID:2}
    assert_equal 'No hay calificaciones aún para este restaurant', flash[:error_o]
  
  end
end
