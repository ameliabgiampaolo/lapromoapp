require 'test_helper'
class RestaurantsgrupocuatroControllerTest < ActionController::TestCase
include Devise::Test::ControllerHelpers
    def setup
      @controller = Api::V1::RestaurantsController.new
    end


    test "Status code error cuando no existen restaurantes en ese estado" do
        get 'restaurant_list',params:{:id => "0"} # 3
        assert_response(404)
    end


    test "Mensaje de error cuando no existen restaurantes en ese estado" do
        get 'restaurant_list',params:{:id => "0"} # 3
        resp = JSON.parse(response.body)
        assert_equal 'No existen restaurantes configurados para ese pais',resp['error']
    end


    test "Status code error en Fltro de nombre" do
        get 'restaurant_name', params:{:q => "1a1"} # 1
        assert_response(404)
    end

    test "Mensaje de error en Fltro de nombre" do
        get 'restaurant_name', params:{:q => "1a1"} # 1
        resp = JSON.parse(response.body)
        assert_equal 'No se encontraron restaurantes',resp['error']
    end


    test "Mensaje de error en Fltro dinamico" do
        get 'restaurant_search', params:{:id => "1",:kt => "0"} # 1
        resp = JSON.parse(response.body)
        assert_equal 'No hay resultados, intente con otro filtro',resp['error']
    end

    test "Status code error en Fltro dinamico" do
        get 'restaurant_search', params:{:id => "1",:kt => "0"} # 1
        assert_response(404)
    end



end
