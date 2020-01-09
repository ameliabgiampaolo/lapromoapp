require 'test_helper'
require "minitest/autorun"

class RestaurantsControllerTest < ActionController::TestCase

    def setup
        @controller = Api::V1::RestaurantsController.new
    end

    #   ------------------------------
    #   Test de platos del restaurante
    #   ------------------------------
    test "Mensaje cuando no hay platos" do
        get 'restaurant_info', params:{:id => "703"} # 703
        assert_equal 'Este restaurante no tiene platos registrados.', flash[:plate]
    end

    test "Mostrar los platos del restaurante" do
        get 'restaurant_info', params:{:id => "701"} # 701
        resp = JSON.parse(response.body)
        assert_not resp['platos'].nil?
    end
    
    #   -----------------------------------
    #   Test de información del restaurante
    #   -----------------------------------
    test "Mensaje cuando el restaurante no tiene descripción" do
        get 'restaurant_info', params: {:id => "701"} # 701 
        assert_equal 'Este restaurante no posee una descripción.', flash[:description]
    end

    test "Mostrar descripción del restaurante" do
        get 'restaurant_info', params: {:id => "702"} # 702
        resp = JSON.parse(response.body)
        assert_not resp['description'].nil?
    end

    #   --------------------------------------
    #   Test de calificaciones del restaurante
    #   --------------------------------------
    test "Mensaje cuando el restaurante no tiene calificaciones" do
        get 'restaurant_info', params: {:id => "702"} # 702
        assert_equal 'Este restaurante no tiene calificaciones.', flash[:comment]
    end

    test "Mostrar las calificaciones detalladas del restaurante" do
        get 'restaurant_info', params: {:id => "701"} # 701
        resp = JSON.parse(response.body)
        assert_not resp['comments'].nil?
    end

    test "Mostrar resumen de calificaciones del restaurante" do
        get 'restaurant_info', params: {:id => "701"} # 701
        resp = JSON.parse(response.body)
        assert_not resp["total_score"].nil?
    end

    #   -----------------------------------
    #   Test de promociones del restaurante
    #   -----------------------------------
    test "Mostrar promociones con datos" do
        get 'restaurant_info', params: {:id => "701"} # 701
        resp = JSON.parse(response.body)
        assert_not resp["promos"].empty?
    end

    test "No mostrar restaurante sin promociones" do
        get 'restaurant_info', params: {:id => "703"} # 703
        assert_equal 'Restaurante invalido', flash[:error]
    end

end
