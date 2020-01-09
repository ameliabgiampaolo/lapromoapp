require 'test_helper'
require "minitest/autorun"

class ReservationsControllerTest < ActionController::TestCase

    def setup
        @controller = Api::V1::ReservationsController.new
    end

    #   ------------------------------------------
    #   Test dias del restaurante en el calendario
    #   ------------------------------------------

    test "Mensaje cuando no hay dias disponibles" do # prueba de disponibilidad de reservas
        get 'reserva', params:{:id => "702"} # 702       # prueba con el restaurant 2
        assert_equal 'No hay dias reservables.', flash[:disponibilidad]
    end

    test "Mostrar los dias disponibles" do             # prueba si se reciben los dias disponibles
        get 'reserva', params:{:id => "701"} # 701         # prueba con el restauran 1
        resp = JSON.parse(response.body)               # resp se llena con las fechas de los dias no disponibles
        assert_not (resp['reservables'].count() == 90) # siempre habra dias disponibles... sino hay 90 dias ocupados
    end

    #   --------------------------------------------------------
    #   Test promos disponibles del restaurante en el calendario
    #   --------------------------------------------------------

    test "Mensaje cuando no hay promos disponibles" do     # prueba si hay disponibilidad de promos
        get 'reserva', params:{:id => "705"} # 705             # prueba con el restaurante 5
        assert_equal 'No hay promociones diponibles.', flash[:ofertas]
    end
    
    test "Mostrar los dias disponibles con promos" do      # prueba si hay disponibilidad de promos y dias
        get 'reserva', params:{:id => "704"} # 704             # prueba con el restaurant 4
        resp = JSON.parse(response.body)                   #recibe los dias no disponibles y las fechas de las promos
        assert_not (resp['diasconpromos'].empty? || (resp['reservables'].count() == 90)) #si las fechas de promos esta vacio, no hay promos disponibles, o si hay 90 dias ocupados no hay dias disponibles
    end

end